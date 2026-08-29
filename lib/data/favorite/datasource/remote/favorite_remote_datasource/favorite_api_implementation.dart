import 'package:baladeston/config/app_config.dart';
import 'package:baladeston/core/network/client/app_http_client.dart';
import 'package:baladeston/core/network/error/dio_error_translator.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/favorite/datasource/remote/favorite_remote_datasource/favorite_api.dart';
import 'package:baladeston/data/favorite/error/favorite_error_mapper.dart' as favorite_error_mapper;
import 'package:baladeston/data/favorite/filter/favorite/favorite_query_filter.dart';
import 'package:baladeston/data/favorite/mapper/favorite/favorite_query_filter_mapper.dart';
import 'package:baladeston/data/favorite/mapper/integrity/favorite_data_integrity_mapper.dart';
import 'package:baladeston/data/favorite/model/favorite_model.dart';
import 'package:baladeston/domain/favorite/failure/base_favorite_failure.dart';
import 'package:baladeston/domain/favorite/failure/server/parsing/favorite_model_parsing_failure.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

class FavoriteApiImplementation extends FavoriteApi {
  final AppHttpClient client;

  FavoriteApiImplementation({required this.client});

  Uri _url(String path, [Map<String, String>? query]) =>
      Uri.parse('${AppConfig.apiBaseUrl}/favorite/$path')
          .replace(queryParameters: query);

  Result<T, FavoriteFailure> _handleDioError<T>(DioException e) {
    final errorData = DioErrorTranslator.translate(e);
    return Result.failure(
      favorite_error_mapper.map(
        errorData.code,
        statusCode: errorData.statusCode,
      ),
    );
  }

  Result<T, FavoriteFailure> _parsingFailure<T>({
    required String debugMessage,
    String? rawSource,
  }) {
    return Result.failure(
      FavoriteModelParsingFailure(
        debugMessage: debugMessage,
        rawSource: rawSource,
      ),
    );
  }

  Result<T, FavoriteFailure> _handleParsingError<T>(
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
      debugPrint('⚠️ [FavoriteApi] Parsing error: $e\n$st');
      return true;
    }());

    return _parsingFailure(
      debugMessage: e.toString(),
      rawSource: json?.toString(),
    );
  }

  @override
  Future<Result<FavoriteModel, FavoriteFailure>> createFavorite({
    required FavoriteModel favorite,
  }) async {
    Map<String, dynamic>? json;
    try {
      final result = await client.post(_url(''), body: favorite.toJson());
      json = result as Map<String, dynamic>;

      final integrityFailure = FavoriteDataIntegrityMapper.map(json);
      if (integrityFailure != null) {
        return Result.failure(integrityFailure);
      }

      return Result.success(FavoriteModel.fromJson(json));
    } on DioException catch (e) {
      return _handleDioError(e);
    } on CheckedFromJsonException catch (e, st) {
      return _handleParsingError(e, st, json);
    } catch (e, st) {
      return _handleParsingError(e, st, json);
    }
  }

  @override
  Future<Result<FavoriteModel, FavoriteFailure>> updateFavoriteById({
    required int id,
    required FavoriteModel favorite,
  }) async {
    Map<String, dynamic>? json;
    try {
      final result = await client.put(_url('$id'), body: favorite.toJson());
      json = result as Map<String, dynamic>;

      final integrityFailure = FavoriteDataIntegrityMapper.map(json);
      if (integrityFailure != null) {
        return Result.failure(integrityFailure);
      }

      return Result.success(FavoriteModel.fromJson(json));
    } on DioException catch (e) {
      return _handleDioError(e);
    } on CheckedFromJsonException catch (e, st) {
      return _handleParsingError(e, st, json);
    } catch (e, st) {
      return _handleParsingError(e, st, json);
    }
  }

  @override
  Future<Result<FavoriteModel, FavoriteFailure>> updateFavoriteByFilter({
    required FavoriteQueryFilter filter,
    required FavoriteModel favorite,
  }) async {
    Map<String, dynamic>? json;
    try {
      final result = await client.put(
        _url('filter', filter.toQuery()),
        body: favorite.toJson(),
      );
      json = result as Map<String, dynamic>;

      final integrityFailure = FavoriteDataIntegrityMapper.map(json);
      if (integrityFailure != null) {
        return Result.failure(integrityFailure);
      }

      return Result.success(FavoriteModel.fromJson(json));
    } on DioException catch (e) {
      return _handleDioError(e);
    } on CheckedFromJsonException catch (e, st) {
      return _handleParsingError(e, st, json);
    } catch (e, st) {
      return _handleParsingError(e, st, json);
    }
  }

  @override
  Future<Result<FavoriteModel, FavoriteFailure>> getFavoriteById({
    required int id,
  }) async {
    Map<String, dynamic>? json;
    try {
      final result = await client.get(_url('$id'));
      json = result as Map<String, dynamic>;

      final integrityFailure = FavoriteDataIntegrityMapper.map(json);
      if (integrityFailure != null) {
        return Result.failure(integrityFailure);
      }

      return Result.success(FavoriteModel.fromJson(json));
    } on DioException catch (e) {
      return _handleDioError(e);
    } on CheckedFromJsonException catch (e, st) {
      return _handleParsingError(e, st, json);
    } catch (e, st) {
      return _handleParsingError(e, st, json);
    }
  }

  @override
  Future<Result<List<FavoriteModel>, FavoriteFailure>> getFavoriteByFilter({
    required FavoriteQueryFilter filter,
  }) async {
    try {
      final result = await client.get(_url('filter', filter.toQuery()));
      final list = result as List;

      if (list.isEmpty) {
        return Result.success(<FavoriteModel>[]);
      }

      final models = <FavoriteModel>[];
      for (final e in list) {
        final json = e as Map<String, dynamic>;

        final integrityFailure = FavoriteDataIntegrityMapper.map(json);
        if (integrityFailure != null) {
          _logCorruptItem(reason: integrityFailure, json: json);
          continue;
        }

        try {
          models.add(FavoriteModel.fromJson(json));
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
    debugPrint('⚠️ [FavoriteApi] Corrupt favorite item skipped: $reason\n$json');
  }

  @override
  Future<Result<int, FavoriteFailure>> deleteFavoriteById({
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
  Future<Result<List<int>, FavoriteFailure>> deleteFavoriteByFilter({
    required FavoriteQueryFilter filter,
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
  Future<Result<int, FavoriteFailure>> countFavorite({
    required FavoriteQueryFilter filter,
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
