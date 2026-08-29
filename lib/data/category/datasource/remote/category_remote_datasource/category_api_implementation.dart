import 'package:baladeston/config/app_config.dart';
import 'package:baladeston/core/model/paginated_response_model.dart';
import 'package:baladeston/core/network/client/app_http_client.dart';
import 'package:baladeston/core/network/error/dio_error_translator.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/category/datasource/remote/category_remote_datasource/category_api.dart';
import 'package:baladeston/data/category/error/category_error_mapper.dart'
    as category_error_mapper;
import 'package:baladeston/data/category/filter/model/category_query_filter.dart';
import 'package:baladeston/data/category/mapper/model/category/category_query_filter_mapper.dart';
import 'package:baladeston/data/category/mapper/model/integrity/category_data_integrity_mapper.dart';
import 'package:baladeston/data/category/model/category_model/category_model.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/failure/server/parsing/category_model_parsing_failure.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:json_annotation/json_annotation.dart';

class CategoryApiImplementation extends CategoryApi {
  final AppHttpClient client;

  CategoryApiImplementation({required this.client});

  Uri _url(String path, [Map<String, String>? query]) =>
      Uri.parse('${AppConfig.apiBaseUrl}/category/$path')
          .replace(queryParameters: query);

  Result<T, CategoryFailure> _handleDioError<T>(DioException e) {
    final errorData = DioErrorTranslator.translate(e);
    return Result.failure(
      category_error_mapper.map(
        errorData.code,
        statusCode: errorData.statusCode,
      ),
    );
  }

  Result<T, CategoryFailure> _parsingFailure<T>({
    required String debugMessage,
    String? rawSource,
  }) {
    return Result.failure(
      CategoryModelParsingFailure(
        debugMessage: debugMessage,
        rawSource: rawSource,
      ),
    );
  }

  Result<T, CategoryFailure> _handleParsingError<T>(
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
      debugPrint('⚠️ [CategoryApi] Parsing error: $e\n$st');
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
        '⚠️ [CategoryApi] Corrupt category item skipped: $reason\n$json',
      );
    }
  }

  Map<String, dynamic>? _asMap(Object? raw) =>
      raw is Map<String, dynamic> ? raw : null;

  List<dynamic>? _asList(Object? raw) => raw is List ? raw : null;

  @override
  Future<Result<PaginatedResponseModel<CategoryModel>, CategoryFailure>>
      getCategoryByFilter({
    required CategoryQueryFilter filter,
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

        final models = <CategoryModel>[];

        for (final e in itemsList) {
          if (e is! Map<String, dynamic>) {
            _logCorruptItem(reason: 'not a Map', json: {});
            continue;
          }

          final integrityFailure = CategoryDataIntegrityMapper.map(e);
          if (integrityFailure != null) {
            _logCorruptItem(reason: integrityFailure, json: e);
            continue;
          }

          try {
            models.add(CategoryModel.fromJson(e));
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
          PaginatedResponseModel<CategoryModel>(
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
          PaginatedResponseModel<CategoryModel>(
            items: const <CategoryModel>[],
            nextCursor: null,
            isLast: true,
          ),
        );
      }

      final models = <CategoryModel>[];

      for (final e in list) {
        if (e is! Map<String, dynamic>) {
          _logCorruptItem(reason: 'not a Map', json: {});
          continue;
        }

        final integrityFailure = CategoryDataIntegrityMapper.map(e);
        if (integrityFailure != null) {
          _logCorruptItem(reason: integrityFailure, json: e);
          continue;
        }

        try {
          models.add(CategoryModel.fromJson(e));
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
        PaginatedResponseModel<CategoryModel>(
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
  Future<Result<CategoryModel, CategoryFailure>> getCategoryById({
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

      final integrityFailure = CategoryDataIntegrityMapper.map(json);
      if (integrityFailure != null) {
        return Result.failure(integrityFailure);
      }

      return Result.success(CategoryModel.fromJson(json));
    } on DioException catch (e) {
      return _handleDioError(e);
    } on CheckedFromJsonException catch (e, st) {
      return _handleParsingError(e, st, raw);
    } catch (e, st) {
      return _handleParsingError(e, st, raw);
    }
  }

  @override
  Future<Result<List<CategoryModel>, CategoryFailure>> getAllCategory({
    required CategoryQueryFilter filter,
  }) async {
    Object? raw;
    try {
      raw = await client.get(_url('', filter.toQuery()));
      final list = _asList(raw);

      if (list == null) {
        return _parsingFailure(
          debugMessage: 'Expected List but got ${raw.runtimeType}',
          rawSource: raw?.toString(),
        );
      }

      if (list.isEmpty) {
        return Result.success(<CategoryModel>[]);
      }

      final models = <CategoryModel>[];

      for (final e in list) {
        if (e is! Map<String, dynamic>) {
          _logCorruptItem(reason: 'not a Map', json: {});
          continue;
        }

        final integrityFailure = CategoryDataIntegrityMapper.map(e);
        if (integrityFailure != null) {
          _logCorruptItem(reason: integrityFailure, json: e);
          continue;
        }

        try {
          models.add(CategoryModel.fromJson(e));
        } on CheckedFromJsonException catch (err) {
          _logCorruptItem(reason: err, json: e);
          continue;
        }
      }

      if (models.isEmpty) {
        return _parsingFailure(
          debugMessage:
              'All ${list.length} items in getAll response failed integrity/parsing check',
          rawSource: list.toString(),
        );
      }

      return Result.success(models);
    } on DioException catch (e) {
      return _handleDioError(e);
    } catch (e, st) {
      return _handleParsingError(e, st, raw);
    }
  }

  @override
  Future<Result<int, CategoryFailure>> countAllCategory({
    required CategoryQueryFilter filter,
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

  @override
  Future<Result<CategoryModel, CategoryFailure>> createCategory({
    required CategoryModel category,
  }) async {
    Object? raw;
    try {
      raw = await client.post(_url(''), body: category.toJson());
      final json = _asMap(raw);

      if (json == null) {
        return _parsingFailure(
          debugMessage: 'Expected Map but got ${raw.runtimeType}',
          rawSource: raw?.toString(),
        );
      }

      final integrityFailure = CategoryDataIntegrityMapper.map(json);
      if (integrityFailure != null) {
        return Result.failure(integrityFailure);
      }

      return Result.success(CategoryModel.fromJson(json));
    } on DioException catch (e) {
      return _handleDioError(e);
    } on CheckedFromJsonException catch (e, st) {
      return _handleParsingError(e, st, raw);
    } catch (e, st) {
      return _handleParsingError(e, st, raw);
    }
  }

  @override
  Future<Result<CategoryModel, CategoryFailure>> updateCategoryById({
    required CategoryModel category,
    required int id,
  }) async {
    Object? raw;
    try {
      raw = await client.put(_url('$id'), body: category.toJson());
      final json = _asMap(raw);

      if (json == null) {
        return _parsingFailure(
          debugMessage: 'Expected Map but got ${raw.runtimeType}',
          rawSource: raw?.toString(),
        );
      }

      final integrityFailure = CategoryDataIntegrityMapper.map(json);
      if (integrityFailure != null) {
        return Result.failure(integrityFailure);
      }

      return Result.success(CategoryModel.fromJson(json));
    } on DioException catch (e) {
      return _handleDioError(e);
    } on CheckedFromJsonException catch (e, st) {
      return _handleParsingError(e, st, raw);
    } catch (e, st) {
      return _handleParsingError(e, st, raw);
    }
  }

  @override
  Future<Result<int, CategoryFailure>> updateCategoryByFilter({
    required CategoryModel category,
    required CategoryQueryFilter filter,
  }) async {
    Object? raw;
    try {
      raw = await client.put(
        _url('filter', filter.toQuery()),
        body: category.toJson(),
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
  Future<Result<int, CategoryFailure>> deleteCategoryById({
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

      final deletedId = json['deletedId'];
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
  Future<Result<int, CategoryFailure>> deleteCategoryByFilter({
    required CategoryQueryFilter filter,
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
  Future<Result<String, CategoryFailure>> uploadCategoryImage({
    required XFile image,
  }) async {
    Object? raw;
    try {
      raw = await client.upload(
        _url('image'),
        file: image,
        field: 'image',
      );
      final json = _asMap(raw);

      if (json == null) {
        return _parsingFailure(
          debugMessage: 'Expected Map but got ${raw.runtimeType}',
          rawSource: raw?.toString(),
        );
      }

      final url = json['url'];
      if (url is! String || url.isEmpty) {
        return _parsingFailure(
          debugMessage:
              'url missing or not a non-empty String (got ${url.runtimeType})',
          rawSource: json.toString(),
        );
      }

      return Result.success(url);
    } on DioException catch (e) {
      return _handleDioError(e);
    } catch (e, st) {
      return _handleParsingError(e, st, raw);
    }
  }
}
