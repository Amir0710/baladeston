import 'package:baladeston/config/app_config.dart';
import 'package:baladeston/core/model/paginated_response_model.dart';
import 'package:baladeston/core/network/client/app_http_client.dart';
import 'package:baladeston/core/network/error/dio_error_translator.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/discount/datasource/remote/discount_remote_datasource/discount_api.dart';
import 'package:baladeston/data/discount/error/discount_error_mapper.dart'
    as discount_error_mapper;
import 'package:baladeston/data/discount/filter/discount/discount_query_filter.dart';
import 'package:baladeston/data/discount/mapper/discount/discount_query_filter_mapper.dart';
import 'package:baladeston/data/discount/mapper/integrity/discount_data_integrity_mapper.dart';
import 'package:baladeston/data/discount/model/discount_model.dart';
import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';
import 'package:baladeston/domain/discount/failure/server/parsing/discount_model_parsing_failure.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

class DiscountApiImplementation extends DiscountApi {
  final AppHttpClient client;

  DiscountApiImplementation({required this.client});

  Uri _url(String path, [Map<String, String>? query]) =>
      Uri.parse('${AppConfig.apiBaseUrl}/discount/$path')
          .replace(queryParameters: query);

  Result<T, DiscountFailure> _handleDioError<T>(DioException e) {
    final errorData = DioErrorTranslator.translate(e);
    return Result.failure(
      discount_error_mapper.map(
        errorData.code,
        statusCode: errorData.statusCode,
      ),
    );
  }

  Result<T, DiscountFailure> _parsingFailure<T>({
    required String debugMessage,
    String? rawSource,
  }) {
    return Result.failure(
      DiscountModelParsingFailure(
        debugMessage: debugMessage,
        rawSource: rawSource,
      ),
    );
  }

  Result<T, DiscountFailure> _handleParsingError<T>(
    Object e,
    StackTrace st,
    Object? raw,
  ) {
    final rawSource = raw?.toString();

    if (e is CheckedFromJsonException) {
      return _parsingFailure(
        debugMessage: 'field: ${e.key} | ${e.message}',
        rawSource: rawSource,
      );
    }

    if (kDebugMode) {
      debugPrint('⚠️ [DiscountApi] Parsing error: $e\n$st');
    }

    return _parsingFailure(
      debugMessage: e.toString(),
      rawSource: rawSource,
    );
  }

  void _logCorruptItem({
    required Object reason,
    required Map<String, dynamic> json,
  }) {
    if (kDebugMode) {
      debugPrint(
        '⚠️ [DiscountApi] Corrupt discount item skipped: $reason\n$json',
      );
    }
  }

  Map<String, dynamic>? _asMap(Object? raw) =>
      raw is Map<String, dynamic> ? raw : null;

  List<dynamic>? _asList(Object? raw) => raw is List ? raw : null;

  @override
  Future<Result<PaginatedResponseModel<DiscountModel>, DiscountFailure>>
      getDiscountByFilter({
    required DiscountQueryFilter filter,
  }) async {
    Object? raw;
    try {
      final query = filter.toQuery();
      raw = await client.get(_url('filter', query));

      // extract filter limit
      final limit = int.tryParse(query['limit'] ?? '');

      // server send map (paginated)
      final map = _asMap(raw);
      if (map != null) {
        final itemsRaw = map['items'] ?? map['data'] ?? map['results'];
        final itemsList = _asList(itemsRaw);

        if (itemsList == null) {
          return _parsingFailure(
            debugMessage:
                'Expected items as List in paginated response but got ${itemsRaw.runtimeType}',
            rawSource: map.toString(),
          );
        }

        final models = <DiscountModel>[];

        for (final e in itemsList) {
          if (e is! Map<String, dynamic>) {
            _logCorruptItem(reason: 'not a Map', json: {});
            continue;
          }

          final integrityFailure = DiscountDataIntegrityMapper.map(e);
          if (integrityFailure != null) {
            _logCorruptItem(reason: integrityFailure, json: e);
            continue;
          }

          try {
            models.add(DiscountModel.fromJson(e));
          } on CheckedFromJsonException catch (err) {
            _logCorruptItem(reason: err, json: e);
            continue;
          }
        }

        if (models.isEmpty && itemsList.isNotEmpty) {
          return _parsingFailure(
            debugMessage:
                'All ${itemsList.length} items in paginated response failed integrity/parsing check',
            rawSource: itemsList.toString(),
          );
        }

        final nextCursorRaw = map['nextCursor'] ??
            map['next'] ??
            map['cursor'] ??
            map['lastElement'];
        final nextCursor = nextCursorRaw?.toString();

        final rawItemsCount = itemsList.length;

        final isLastRaw = map['isLast'];
        final isLast = isLastRaw is bool
            ? isLastRaw
            : (limit != null ? rawItemsCount < limit : false);

        return Result.success(
          PaginatedResponseModel<DiscountModel>(
            items: models,
            nextCursor: nextCursor,
            isLast: isLast,
          ),
        );
      }

      // server send list (legacy)
      final list = _asList(raw);
      if (list == null) {
        return _parsingFailure(
          debugMessage:
              'Expected Map (paginated) or List (legacy) but got ${raw.runtimeType}',
          rawSource: raw?.toString(),
        );
      }

      if (list.isEmpty) {
        return Result.success(
          PaginatedResponseModel<DiscountModel>(
            items: const <DiscountModel>[],
            nextCursor: null,
            isLast: true,
          ),
        );
      }

      final models = <DiscountModel>[];

      for (final e in list) {
        if (e is! Map<String, dynamic>) {
          _logCorruptItem(reason: 'not a Map', json: {});
          continue;
        }

        final integrityFailure = DiscountDataIntegrityMapper.map(e);
        if (integrityFailure != null) {
          _logCorruptItem(reason: integrityFailure, json: e);
          continue;
        }

        try {
          models.add(DiscountModel.fromJson(e));
        } on CheckedFromJsonException catch (err) {
          _logCorruptItem(reason: err, json: e);
          continue;
        }
      }

      if (models.isEmpty) {
        return _parsingFailure(
          debugMessage:
              'All ${list.length} items in legacy list response failed integrity/parsing check',
          rawSource: list.toString(),
        );
      }

      final rawItemsCount = list.length;
      final isLast = limit != null ? rawItemsCount < limit : false;

      return Result.success(
        PaginatedResponseModel<DiscountModel>(
          items: models,
          nextCursor: null,
          isLast: isLast,
        ),
      );
    } on DioException catch (e) {
      return _handleDioError(e);
    } catch (e, st) {
      return _handleParsingError(e, st, raw);
    }
  }

  @override
  Future<Result<DiscountModel, DiscountFailure>> getDiscountById({
    required int id,
  }) async {
    Object? raw;
    try {
      raw = await client.get(_url('$id'));
      final json = _asMap(raw);

      if (json == null) {
        return _parsingFailure(
          debugMessage: 'Expected Map but got ${raw.runtimeType}',
          rawSource: raw?.toString(),
        );
      }

      final integrityFailure = DiscountDataIntegrityMapper.map(json);
      if (integrityFailure != null) {
        return Result.failure(integrityFailure);
      }

      return Result.success(DiscountModel.fromJson(json));
    } on DioException catch (e) {
      return _handleDioError(e);
    } on CheckedFromJsonException catch (e, st) {
      return _handleParsingError(e, st, raw);
    } catch (e, st) {
      return _handleParsingError(e, st, raw);
    }
  }

  @override
  Future<Result<DiscountModel, DiscountFailure>> createDiscount({
    required DiscountModel discount,
  }) async {
    Object? raw;
    try {
      raw = await client.post(_url(''), body: discount.toJson());
      final json = _asMap(raw);

      if (json == null) {
        return _parsingFailure(
          debugMessage: 'Expected Map but got ${raw.runtimeType}',
          rawSource: raw?.toString(),
        );
      }

      final integrityFailure = DiscountDataIntegrityMapper.map(json);
      if (integrityFailure != null) {
        return Result.failure(integrityFailure);
      }

      return Result.success(DiscountModel.fromJson(json));
    } on DioException catch (e) {
      return _handleDioError(e);
    } on CheckedFromJsonException catch (e, st) {
      return _handleParsingError(e, st, raw);
    } catch (e, st) {
      return _handleParsingError(e, st, raw);
    }
  }

  @override
  Future<Result<DiscountModel, DiscountFailure>> updateDiscountById({
    required DiscountModel discount,
    required int id,
  }) async {
    Object? raw;
    try {
      raw = await client.put(_url('$id'), body: discount.toJson());
      final json = _asMap(raw);

      if (json == null) {
        return _parsingFailure(
          debugMessage: 'Expected Map but got ${raw.runtimeType}',
          rawSource: raw?.toString(),
        );
      }

      final integrityFailure = DiscountDataIntegrityMapper.map(json);
      if (integrityFailure != null) {
        return Result.failure(integrityFailure);
      }

      return Result.success(DiscountModel.fromJson(json));
    } on DioException catch (e) {
      return _handleDioError(e);
    } on CheckedFromJsonException catch (e, st) {
      return _handleParsingError(e, st, raw);
    } catch (e, st) {
      return _handleParsingError(e, st, raw);
    }
  }

  @override
  Future<Result<int, DiscountFailure>> updateDiscountByFilter({
    required DiscountModel discount,
    required DiscountQueryFilter filter,
  }) async {
    Object? raw;
    try {
      raw = await client.put(
        _url('filter', filter.toQuery()),
        body: discount.toJson(),
      );

      if (raw is int) {
        return Result.success(raw);
      }

      final json = _asMap(raw);
      if (json != null) {
        final count = json['updatedCount'] ?? json['count'] ?? json['affected'];
        if (count is int) {
          return Result.success(count);
        }
      }

      return _parsingFailure(
        debugMessage:
            'Expected int or Map with updatedCount/count/affected, got ${raw.runtimeType}',
        rawSource: raw?.toString(),
      );
    } on DioException catch (e) {
      return _handleDioError(e);
    } catch (e, st) {
      return _handleParsingError(e, st, raw);
    }
  }

  @override
  Future<Result<int, DiscountFailure>> deleteDiscountById({
    required int id,
  }) async {
    Object? raw;
    try {
      raw = await client.delete(_url('$id'));
      final json = _asMap(raw);

      if (json == null) {
        return _parsingFailure(
          debugMessage: 'Expected Map but got ${raw.runtimeType}',
          rawSource: raw?.toString(),
        );
      }

      final deletedId = json['deletedId'] ?? json['id'];
      if (deletedId is! int) {
        return _parsingFailure(
          debugMessage:
              'deletedId missing or not int (got ${deletedId.runtimeType})',
          rawSource: json.toString(),
        );
      }

      return Result.success(deletedId);
    } on DioException catch (e) {
      return _handleDioError(e);
    } catch (e, st) {
      return _handleParsingError(e, st, raw);
    }
  }

  @override
  Future<Result<int, DiscountFailure>> deleteDiscountByFilter({
    required DiscountQueryFilter filter,
  }) async {
    Object? raw;
    try {
      raw = await client.delete(_url('filter', filter.toQuery()));

      if (raw is int) {
        return Result.success(raw);
      }

      final json = _asMap(raw);
      if (json != null) {
        final count = json['deletedCount'] ?? json['count'] ?? json['affected'];
        if (count is int) {
          return Result.success(count);
        }
      }

      return _parsingFailure(
        debugMessage:
            'Expected int or Map with deletedCount/count/affected, got ${raw.runtimeType}',
        rawSource: raw?.toString(),
      );
    } on DioException catch (e) {
      return _handleDioError(e);
    } catch (e, st) {
      return _handleParsingError(e, st, raw);
    }
  }

  @override
  Future<Result<int, DiscountFailure>> countAllDiscount({
    required DiscountQueryFilter filter,
  }) async {
    Object? raw;
    try {
      raw = await client.get(_url('count', filter.toQuery()));
      final json = _asMap(raw);

      if (json == null) {
        return _parsingFailure(
          debugMessage: 'Expected Map but got ${raw.runtimeType}',
          rawSource: raw?.toString(),
        );
      }

      final count = json['count'];
      if (count is! int) {
        return _parsingFailure(
          debugMessage: 'count missing or not int (got ${count.runtimeType})',
          rawSource: json.toString(),
        );
      }

      return Result.success(count);
    } on DioException catch (e) {
      return _handleDioError(e);
    } catch (e, st) {
      return _handleParsingError(e, st, raw);
    }
  }
}
