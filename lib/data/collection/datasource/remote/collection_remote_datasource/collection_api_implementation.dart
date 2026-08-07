import 'dart:io';

import 'package:baladeston/config/app_config.dart';
import 'package:baladeston/core/network/client/app_http_client.dart';
import 'package:baladeston/core/network/error/dio_error_translator.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/collection/datasource/remote/collection_remote_datasource/collection_api.dart';
import 'package:baladeston/data/collection/error/collection_error_mapper.dart'
as collection_error_mapper;
import 'package:baladeston/data/collection/filter/model/collection_query_filter.dart';
import 'package:baladeston/data/collection/mapper/model/collection_query_filter_mapper.dart';
import 'package:baladeston/data/collection/model/collection_model/collection_model.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/failure/server/parsing/collection_model_parsing_failure.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

class CollectionApiImplementation extends CollectionApi {
  final AppHttpClient client;

  CollectionApiImplementation({required this.client});

  Uri _url(String path, [Map<String, String>? query]) =>
      Uri.parse('${AppConfig.apiBaseUrl}/collection/$path')
          .replace(queryParameters: query);

  Result<T, CollectionFailure> _handleDioError<T>(DioException e) {
    final errorData = DioErrorTranslator.translate(e);
    return Result.failure(
      collection_error_mapper.map(
        errorData.code,
        statusCode: errorData.statusCode,
      ),
    );
  }

  Result<T, CollectionFailure> _handleParsingError<T>(
      Object e,
      StackTrace st,
      Map<String, dynamic>? json,
      ) {
    if (e is CheckedFromJsonException) {
      return Result.failure(
        CollectionModelParsingFailure(
          debugMessage: 'field: ${e.key} | ${e.message}',
          rawSource: json?.toString(),
        ),
      );
    }

    assert(() {
      debugPrint('⚠️ [CollectionApi] Parsing error: $e\n$st');
      return true;
    }());

    return Result.failure(
      CollectionModelParsingFailure(
        debugMessage: e.toString(),
        rawSource: json?.toString(),
      ),
    );
  }

  @override
  Future<Result<List<CollectionModel>, CollectionFailure>>
  getCollectionByFilter({
    required CollectionQueryFilter filter,
  }) async {
    try {
      final result = await client.get(_url('filter', filter.toQuery()));
      final list = result as List;
      return Result.success(
        list
            .map((e) => CollectionModel.fromJson(e as Map<String, dynamic>))
            .toList(),
      );
    } on DioException catch (e) {
      return _handleDioError(e);
    } on CheckedFromJsonException catch (e, st) {
      return _handleParsingError(e, st, null);
    } catch (e, st) {
      return _handleParsingError(e, st, null);
    }
  }

  @override
  Future<Result<CollectionModel, CollectionFailure>> getCollectionById({
    required int id,
  }) async {
    Map<String, dynamic>? json;
    try {
      final result = await client.get(_url('$id'));
      json = result as Map<String, dynamic>;
      return Result.success(CollectionModel.fromJson(json));
    } on DioException catch (e) {
      return _handleDioError(e);
    } on CheckedFromJsonException catch (e, st) {
      return _handleParsingError(e, st, json);
    } catch (e, st) {
      return _handleParsingError(e, st, json);
    }
  }

  @override
  Future<Result<CollectionModel, CollectionFailure>> createCollection({
    required CollectionModel collection,
  }) async {
    Map<String, dynamic>? json;
    try {
      final result = await client.post(_url(''), body: collection.toJson());
      json = result as Map<String, dynamic>;
      return Result.success(CollectionModel.fromJson(json));
    } on DioException catch (e) {
      return _handleDioError(e);
    } on CheckedFromJsonException catch (e, st) {
      return _handleParsingError(e, st, json);
    } catch (e, st) {
      return _handleParsingError(e, st, json);
    }
  }

  @override
  Future<Result<CollectionModel, CollectionFailure>> updateCollectionById({
    required CollectionModel collection,
    required int id,
  }) async {
    Map<String, dynamic>? json;
    try {
      final result = await client.put(_url('$id'), body: collection.toJson());
      json = result as Map<String, dynamic>;
      return Result.success(CollectionModel.fromJson(json));
    } on DioException catch (e) {
      return _handleDioError(e);
    } on CheckedFromJsonException catch (e, st) {
      return _handleParsingError(e, st, json);
    } catch (e, st) {
      return _handleParsingError(e, st, json);
    }
  }

  @override
  Future<Result<int, CollectionFailure>> updateCollectionByFilter({
    required CollectionModel collection,
    required CollectionQueryFilter filter,
  }) async {
    try {
      final result = await client.put(
        _url('filter', filter.toQuery()),
        body: collection.toJson(),
      );
      return Result.success(result as int);
    } on DioException catch (e) {
      return _handleDioError(e);
    } catch (e, st) {
      return _handleParsingError(e, st, null);
    }
  }

  @override
  Future<Result<int, CollectionFailure>> deleteCollectionById({
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
  Future<Result<List<int>, CollectionFailure>> deleteCollectionByFilter({
    required CollectionQueryFilter filter,
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
  Future<Result<int, CollectionFailure>> countAllCollection({
    required CollectionQueryFilter filter,
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

  @override
  Future<Result<String, CollectionFailure>> uploadCollectionImage({
    required File image,
  }) async {
    Map<String, dynamic>? json;
    try {
      final result = await client.upload(
        _url('image'),
        file: image,
        field: 'image',
      );
      json = result as Map<String, dynamic>;
      return Result.success(json['url'] as String);
    } on DioException catch (e) {
      return _handleDioError(e);
    } catch (e, st) {
      return _handleParsingError(e, st, json);
    }
  }
}


