import 'package:baladeston/config/app_config.dart';
import 'package:baladeston/core/network/client/app_http_client.dart';
import 'package:baladeston/core/network/error/dio_error_translator.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/reaction/datasource/remote/reaction_remote_datasource/reaction_api.dart';
import 'package:baladeston/data/reaction/error/reaction_error_mapper.dart' as reaction_error_mapper;
import 'package:baladeston/data/reaction/filter/reaction/reaction_query_filter.dart';
import 'package:baladeston/data/reaction/mapper/reaction/reaction_query_filter_mapper.dart';
import 'package:baladeston/data/reaction/mapper/integrity/reaction_data_integrity_mapper.dart';
import 'package:baladeston/data/reaction/model/reaction_model.dart';
import 'package:baladeston/domain/reaction/failure/base_reaction_failure.dart';
import 'package:baladeston/domain/reaction/failure/server/parsing/reaction_model_parsing_failure.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

class ReactionApiImplementation extends ReactionApi {
  final AppHttpClient client;

  ReactionApiImplementation({required this.client});

  Uri _url(String path, [Map<String, String>? query]) =>
      Uri.parse('${AppConfig.apiBaseUrl}/reaction/$path')
          .replace(queryParameters: query);

  Result<T, ReactionFailure> _handleDioError<T>(DioException e) {
    final errorData = DioErrorTranslator.translate(e);
    return Result.failure(
      reaction_error_mapper.map(
        errorData.code,
        statusCode: errorData.statusCode,
      ),
    );
  }

  Result<T, ReactionFailure> _parsingFailure<T>({
    required String debugMessage,
    String? rawSource,
  }) {
    return Result.failure(
      ReactionModelParsingFailure(
        debugMessage: debugMessage,
        rawSource: rawSource,
      ),
    );
  }

  Result<T, ReactionFailure> _handleParsingError<T>(
    Object e,
    StackTrace st,
    Map<String, dynamic>? json,
  ) {
    if (e is CheckedFromJsonException) {
      return _parsingFailure(
        debugMessage: 'field: ${e.key} | ${e.message}',
        rawSource: json?.toString(),
      );
    }

    assert(() {
      debugPrint('⚠️ [ReactionApi] Parsing error: $e\n$st');
      return true;
    }());

    return _parsingFailure(
      debugMessage: e.toString(),
      rawSource: json?.toString(),
    );
  }

  @override
  Future<Result<ReactionModel, ReactionFailure>> createReaction({
    required ReactionModel reaction,
  }) async {
    Map<String, dynamic>? json;
    try {
      final result = await client.post(_url(''), body: reaction.toJson());
      json = result as Map<String, dynamic>;

      final integrityFailure = ReactionDataIntegrityMapper.map(json);
      if (integrityFailure != null) {
        return Result.failure(integrityFailure);
      }

      return Result.success(ReactionModel.fromJson(json));
    } on DioException catch (e) {
      return _handleDioError(e);
    } on CheckedFromJsonException catch (e, st) {
      return _handleParsingError(e, st, json);
    } catch (e, st) {
      return _handleParsingError(e, st, json);
    }
  }

  @override
  Future<Result<ReactionModel, ReactionFailure>> updateReactionById({
    required int id,
    required ReactionModel reaction,
  }) async {
    Map<String, dynamic>? json;
    try {
      final result = await client.put(_url('$id'), body: reaction.toJson());
      json = result as Map<String, dynamic>;

      final integrityFailure = ReactionDataIntegrityMapper.map(json);
      if (integrityFailure != null) {
        return Result.failure(integrityFailure);
      }

      return Result.success(ReactionModel.fromJson(json));
    } on DioException catch (e) {
      return _handleDioError(e);
    } on CheckedFromJsonException catch (e, st) {
      return _handleParsingError(e, st, json);
    } catch (e, st) {
      return _handleParsingError(e, st, json);
    }
  }

  @override
  Future<Result<int, ReactionFailure>> updateReactionByFilter({
    required ReactionQueryFilter filter,
    required ReactionModel reaction,
  }) async {
    Map<String, dynamic>? json;
    try {
      final result = await client.put(
        _url('filter', filter.toQuery()),
        body: reaction.toJson(),
      );
      json = result as Map<String, dynamic>;

      final integrityFailure = ReactionDataIntegrityMapper.map(json);
      if (integrityFailure != null) {
        return Result.failure(integrityFailure);
      }

      return Result.success(ReactionModel.fromJson(json));
    } on DioException catch (e) {
      return _handleDioError(e);
    } on CheckedFromJsonException catch (e, st) {
      return _handleParsingError(e, st, json);
    } catch (e, st) {
      return _handleParsingError(e, st, json);
    }
  }

  @override
  Future<Result<ReactionModel, ReactionFailure>> getReactionById({
    required int id,
  }) async {
    Map<String, dynamic>? json;
    try {
      final result = await client.get(_url('$id'));
      json = result as Map<String, dynamic>;

      final integrityFailure = ReactionDataIntegrityMapper.map(json);
      if (integrityFailure != null) {
        return Result.failure(integrityFailure);
      }

      return Result.success(ReactionModel.fromJson(json));
    } on DioException catch (e) {
      return _handleDioError(e);
    } on CheckedFromJsonException catch (e, st) {
      return _handleParsingError(e, st, json);
    } catch (e, st) {
      return _handleParsingError(e, st, json);
    }
  }

  @override
  Future<Result<List<ReactionModel>, ReactionFailure>> getReactionByFilter({
    required ReactionQueryFilter filter,
  }) async {
    try {
      final result = await client.get(_url('filter', filter.toQuery()));
      final list = result as List;

      if (list.isEmpty) {
        return Result.success(<ReactionModel>[]);
      }

      final models = <ReactionModel>[];
      for (final e in list) {
        final json = e as Map<String, dynamic>;

        final integrityFailure = ReactionDataIntegrityMapper.map(json);
        if (integrityFailure != null) {
          _logCorruptItem(reason: integrityFailure, json: json);
          continue;
        }

        try {
          models.add(ReactionModel.fromJson(json));
        } on CheckedFromJsonException catch (e) {
          _logCorruptItem(reason: e, json: json);
          continue;
        }
      }

      if (models.isEmpty && list.isNotEmpty) {
        return _parsingFailure(
          debugMessage: 'All ${list.length} items in filter response failed integrity/parsing check',
          rawSource: list.toString(),
        );
      }

      return Result.success(models);
    } on DioException catch (e) {
      return _handleDioError(e);
    } catch (e, st) {
      return _handleParsingError(e, st, null);
    }
  }

  void _logCorruptItem({
    required Object reason,
    required Map<String, dynamic> json,
  }) {
    debugPrint('⚠️ [ReactionApi] Corrupt reaction item skipped: $reason\n$json');
  }

  @override
  Future<Result<int, ReactionFailure>> deleteReactionById({
    required int id,
  }) async {
    Map<String, dynamic>? json;
    try {
      final result = await client.delete(_url('$id'));
      json = result as Map<String, dynamic>;
      return Result.success(json['deletedId'] as int);
    } on DioException catch (e) {
      return _handleDioError(e);
    } catch (e, st) {
      return _handleParsingError(e, st, json);
    }
  }

  @override
  Future<Result<int, ReactionFailure>> deleteReactionByFilter({
    required ReactionQueryFilter filter,
  }) async {
    Map<String, dynamic>? json;
    try {
      final result = await client.delete(_url('filter', filter.toQuery()));
      json = result as Map<String, dynamic>;
      return Result.success((json['deletedIds'] as List).cast<int>());
    } on DioException catch (e) {
      return _handleDioError(e);
    } catch (e, st) {
      return _handleParsingError(e, st, json);
    }
  }

  @override
  Future<Result<int, ReactionFailure>> countReaction({
    required ReactionQueryFilter filter,
  }) async {
    Map<String, dynamic>? json;
    try {
      final result = await client.get(_url('count', filter.toQuery()));
      json = result as Map<String, dynamic>;
      return Result.success(json['count'] as int);
    } on DioException catch (e) {
      return _handleDioError(e);
    } catch (e, st) {
      return _handleParsingError(e, st, json);
    }
  }
}
