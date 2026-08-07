import 'package:baladeston/config/app_config.dart';
import 'package:baladeston/core/network/client/app_http_client.dart';
import 'package:baladeston/core/network/error/dio_error_translator.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/category/datasource/remote/category_remote_datasource/category_api.dart';
import 'package:baladeston/data/category/error/category_error_mapper.dart'
as category_error_mapper;
import 'package:baladeston/data/category/filter/item/category_item_query_filter.dart';
import 'package:baladeston/data/category/mapper/item/category_Item_query_filter_mapper.dart';
import 'package:baladeston/data/category/model/category_item_model/category_item_model.dart';
import 'package:baladeston/data/collection/filter/model/collection_query_filter.dart';
import 'package:baladeston/data/collection/mapper/model/collection_query_filter_mapper.dart';
import 'package:baladeston/data/collection/model/collection_model/collection_model.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/failure/server/parsing/category_model_parsing_failure.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

class CategoryItemApiImplementation extends CategoryItemApi {
  final AppHttpClient client;

  CategoryItemApiImplementation({
    required this.client,
  });

  Uri _url(String path, [Map<String, String>? query]) {
    return Uri.parse('${AppConfig.apiBaseUrl}/category-items/$path')
        .replace(queryParameters: query);
  }

  Result<T, CategoryFailure> _handleDioError<T>(DioException e) {
    final errorData = DioErrorTranslator.translate(e);

    return Result.failure(
      category_error_mapper.map(
        errorData.code,
        statusCode: errorData.statusCode,
      ),
    );
  }

  Result<T, CategoryFailure> _handleParsingError<T>(
      Object e,
      StackTrace st,
      Map<String, dynamic>? json,
      ) {
    if (e is CheckedFromJsonException) {
      return Result.failure(
        CategoryModelParsingFailure(
          debugMessage: 'field: ${e.key} | ${e.message}',
          rawSource: json?.toString(),
        ),
      );
    }

    assert(() {
      debugPrint('⚠️ [CategoryItemApi] Parsing error: $e\n$st');
      return true;
    }());

    return Result.failure(
      CategoryModelParsingFailure(
        debugMessage: e.toString(),
        rawSource: json?.toString(),
      ),
    );
  }

  @override
  Future<Result<CategoryItemModel, CategoryFailure>> addCategoryItem({
    required CategoryItemModel item,
  }) async {
    Map<String, dynamic>? json;

    try {
      final result = await client.post(
        _url(''),
        body: item.toJson(),
      );

      json = result as Map<String, dynamic>;

      return Result.success(CategoryItemModel.fromJson(json));
    } on DioException catch (e) {
      return _handleDioError(e);
    } on CheckedFromJsonException catch (e, st) {
      return _handleParsingError(e, st, json);
    } catch (e, st) {
      return _handleParsingError(e, st, json);
    }
  }

  @override
  Future<Result<CategoryItemModel, CategoryFailure>> updateCategoryItemById({
    required int id,
    required CategoryItemModel item,
  }) async {
    Map<String, dynamic>? json;

    try {
      final result = await client.put(
        _url('$id'),
        body: item.toJson(),
      );

      json = result as Map<String, dynamic>;

      return Result.success(CategoryItemModel.fromJson(json));
    } on DioException catch (e) {
      return _handleDioError(e);
    } on CheckedFromJsonException catch (e, st) {
      return _handleParsingError(e, st, json);
    } catch (e, st) {
      return _handleParsingError(e, st, json);
    }
  }

  @override
  Future<Result<int, CategoryFailure>> updateCategoryItemByFilter({
    required CategoryItemQueryFilter filter,
    required CategoryItemModel item,
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
      return _handleParsingError(e, st, null);
    }
  }

  @override
  Future<Result<int, CategoryFailure>> deleteCategoryItemById({
    required int itemId,
  }) async {
    Map<String, dynamic>? json;

    try {
      final result = await client.delete(_url('$itemId'));

      json = result as Map<String, dynamic>;

      return Result.success(json['deletedId'] as int);
    } on DioException catch (e) {
      return _handleDioError(e);
    } catch (e, st) {
      return _handleParsingError(e, st, json);
    }
  }

  @override
  Future<Result<List<int>, CategoryFailure>> deleteCategoryItemByFilter({
    required CategoryItemQueryFilter filter,
  }) async {
    Map<String, dynamic>? json;

    try {
      final result = await client.delete(
        _url('filter', filter.toQuery()),
      );

      json = result as Map<String, dynamic>;

      return Result.success(
        (json['deletedIds'] as List).cast<int>(),
      );
    } on DioException catch (e) {
      return _handleDioError(e);
    } catch (e, st) {
      return _handleParsingError(e, st, json);
    }
  }

  @override
  Future<Result<List<CollectionModel>, CategoryFailure>>
  getCollectionsByCategoryItemFilter({
    required CategoryItemQueryFilter categoryItemFilter,
    required CollectionQueryFilter collectionFilter,
  }) async {
    try {
      final result = await client.get(
        _url(
          'collections',
          {
            ...categoryItemFilter.toQuery(),
            ...collectionFilter.toQuery(),
          },
        ),
      );

      final list = result as List;

      return Result.success(
        list
            .map(
              (e) => CollectionModel.fromJson(
            e as Map<String, dynamic>,
          ),
        )
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
  Future<Result<List<CategoryItemModel>, CategoryFailure>>
  getCategoryItemByFilter({
    required CategoryItemQueryFilter categoryItemFilter,
  }) async {
    try {
      final result = await client.get(
        _url('filter', categoryItemFilter.toQuery()),
      );

      final list = result as List;

      return Result.success(
        list
            .map(
              (e) => CategoryItemModel.fromJson(
            e as Map<String, dynamic>,
          ),
        )
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
  Future<Result<CategoryItemModel, CategoryFailure>> getCategoryItemById({
    required int itemId,
  }) async {
    Map<String, dynamic>? json;

    try {
      final result = await client.get(_url('$itemId'));

      json = result as Map<String, dynamic>;

      return Result.success(CategoryItemModel.fromJson(json));
    } on DioException catch (e) {
      return _handleDioError(e);
    } on CheckedFromJsonException catch (e, st) {
      return _handleParsingError(e, st, json);
    } catch (e, st) {
      return _handleParsingError(e, st, json);
    }
  }
}
