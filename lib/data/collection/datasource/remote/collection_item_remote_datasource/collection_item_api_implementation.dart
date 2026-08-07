import 'package:baladeston/config/app_config.dart';
import 'package:baladeston/core/network/client/app_http_client.dart';
import 'package:baladeston/core/network/error/dio_error_translator.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/collection/datasource/remote/collection_item_remote_datasource/collection_item_api.dart';
import 'package:baladeston/data/collection/error/collection_error_mapper.dart' as collection_error_mapper;
import 'package:baladeston/data/collection/filter/item/collection_item_query_filter.dart';
import 'package:baladeston/data/collection/mapper/item/collection_item_query_filter.dart';
import 'package:baladeston/data/collection/model/collection_item_model/collection_item_model.dart';
import 'package:baladeston/data/video/filter/video_query_filter.dart';
import 'package:baladeston/data/video/mapper/video_query_filter_mapper.dart';
import 'package:baladeston/data/video/model/video_model.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/failure/server/parsing/collection_model_parsing_failure.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class CollectionItemApiImplementation extends CollectionItemApi {
  final AppHttpClient client;

  CollectionItemApiImplementation({required this.client});

  Uri _url(String path, [Map<String, String>? query]) =>
      Uri.parse('${AppConfig.apiBaseUrl}/collection/item/$path')
          .replace(queryParameters: query);

  Result<T, CollectionFailure> _handleDioError<T>(DioException e) {
    final errorData = DioErrorTranslator.translate(e);
    return Result.failure(
      collection_error_mapper.map(errorData.code, statusCode: errorData.statusCode),
    );
  }

  Result<T, CollectionFailure> _handleParsingError<T>(Object e, StackTrace st) {
    assert(() {
      debugPrint('⚠️ [CollectionItemApi] Parsing error: $e\n$st');
      return true;
    }());
    return Result.failure(const CollectionModelParsingFailure());
  }

  @override
  Future<Result<CollectionItemModel, CollectionFailure>> addCollectionItem({
    required CollectionItemModel item,
  }) async {
    try {
      final result = await client.post(_url(''), body: item.toJson());
      return Result.success(
        CollectionItemModel.fromJson(result as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      return _handleDioError(e);
    } catch (e, st) {
      return _handleParsingError(e, st);
    }
  }

  @override
  Future<Result<List<CollectionItemModel>, CollectionFailure>>
  getCollectionItemByCollectionFilter({
    required CollectionItemQueryFilter collectionItemFilter,
  }) async {
    try {
      final result = await client.get(
        _url('filter', collectionItemFilter.toQuery()),
      );
      return Result.success(
        (result as List)
            .map((e) => CollectionItemModel.fromJson(e as Map<String, dynamic>))
            .toList(),
      );
    } on DioException catch (e) {
      return _handleDioError(e);
    } catch (e, st) {
      return _handleParsingError(e, st);
    }
  }

  @override
  Future<Result<List<VideoModel>, CollectionFailure>>
  getVideosByCollectionItemFilter({
    required CollectionItemQueryFilter collectionItemFilter,
    required VideoQueryFilter videoFilter,
  }) async {
    try {
      final query = {
        ...collectionItemFilter.toQuery(),
        ...videoFilter.toQuery(),
      };
      final result = await client.get(_url('videos', query));
      return Result.success(
        (result as List)
            .map((e) => VideoModel.fromJson(e as Map<String, dynamic>))
            .toList(),
      );
    } on DioException catch (e) {
      return _handleDioError(e);
    } catch (e, st) {
      return _handleParsingError(e, st);
    }
  }

  @override
  Future<Result<int, CollectionFailure>> removeCollectionItemByFilter({
    required CollectionItemQueryFilter filter,
  }) async {
    try {
      final result = await client.delete(_url('filter', filter.toQuery()));
      return Result.success(result as int);
    } on DioException catch (e) {
      return _handleDioError(e);
    } catch (e, st) {
      return _handleParsingError(e, st);
    }
  }

  @override
  Future<Result<int, CollectionFailure>> removeCollectionItemById({
    required int itemId,
  }) async {
    try {
      final result = await client.delete(_url('$itemId'));
      return Result.success(
        (result as Map<String, dynamic>)['deletedId'] as int,
      );
    } on DioException catch (e) {
      return _handleDioError(e);
    } catch (e, st) {
      return _handleParsingError(e, st);
    }
  }

  @override
  Future<Result<int, CollectionFailure>> updateCollectionItemByFilter({
    required CollectionItemQueryFilter filter,
    required CollectionItemModel item,
  }) async {
    try {
      final result = await client.put(
        _url('filter', filter.toQuery()),
        body: item.toJson(),
      );
      return Result.success(result as int);
    } on DioException catch (e) {
      return _handleDioError(e);
    } catch (e, st) {
      return _handleParsingError(e, st);
    }
  }

  @override
  Future<Result<CollectionItemModel, CollectionFailure>>
  updateCollectionItemById({
    required int id,
    required CollectionItemModel item,
  }) async {
    try {
      final result = await client.put(_url('$id'), body: item.toJson());
      return Result.success(
        CollectionItemModel.fromJson(result as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      return _handleDioError(e);
    } catch (e, st) {
      return _handleParsingError(e, st);
    }
  }
}
