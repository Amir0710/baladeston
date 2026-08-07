import 'dart:io';

import 'package:baladeston/config/app_config.dart';
import 'package:baladeston/core/network/client/app_http_client.dart';
import 'package:baladeston/core/network/error/dio_error_translator.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/category/datasource/remote/category_item_remote_datasource/category_item_api.dart';
import 'package:baladeston/data/category/error/category_error_mapper.dart'
    as category_error_mapper;
import 'package:baladeston/data/category/error/mapper/category_query_filter_mapper.dart';
import 'package:baladeston/data/category/filter/model/category_query_filter.dart';
import 'package:baladeston/data/category/model/category_model/category_model.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/failure/server/parsing/category_model_parsing_failure.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
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
      category_error_mapper.map(errorData.code,
          statusCode: errorData.statusCode),
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
      debugPrint('⚠️ [CategoryApi] Parsing error: $e\n$st');
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
  Future<Result<List<CategoryModel>, CategoryFailure>> getCategoryByFilter({
    required CategoryQueryFilter filter,
  }) async {
    try {
      final result = await client.get(_url('filter', filter.toQuery()));
      final list = result as List;
      return Result.success(
        list
            .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
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
  Future<Result<CategoryModel, CategoryFailure>> getCategoryById({
    required int id,
  }) async {
    Map<String, dynamic>? json;
    try {
      final result = await client.get(_url('$id'));
      json = result as Map<String, dynamic>;
      return Result.success(CategoryModel.fromJson(json));
    } on DioException catch (e) {
      return _handleDioError(e);
    } on CheckedFromJsonException catch (e, st) {
      return _handleParsingError(e, st, json);
    } catch (e, st) {
      return _handleParsingError(e, st, json);
    }
  }

  @override
  Future<Result<List<CategoryModel>, CategoryFailure>> getAllCategory({
    required CategoryQueryFilter filter,
  }) async {
    try {
      final result = await client.get(_url('', filter.toQuery()));
      final list = result as List;
      return Result.success(
        list
            .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
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
  Future<Result<int, CategoryFailure>> countAllCategory({
    required CategoryQueryFilter filter,
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
  Future<Result<CategoryModel, CategoryFailure>> createCategory({
    required CategoryModel category,
  }) async {
    Map<String, dynamic>? json;
    try {
      final result = await client.post(_url(''), body: category.toJson());
      json = result as Map<String, dynamic>;
      return Result.success(CategoryModel.fromJson(json));
    } on DioException catch (e) {
      return _handleDioError(e);
    } on CheckedFromJsonException catch (e, st) {
      return _handleParsingError(e, st, json);
    } catch (e, st) {
      return _handleParsingError(e, st, json);
    }
  }

  @override
  Future<Result<CategoryModel, CategoryFailure>> updateCategoryById({
    required CategoryModel category,
    required int id,
  }) async {
    Map<String, dynamic>? json;
    try {
      final result = await client.put(_url('$id'), body: category.toJson());
      json = result as Map<String, dynamic>;
      return Result.success(CategoryModel.fromJson(json));
    } on DioException catch (e) {
      return _handleDioError(e);
    } on CheckedFromJsonException catch (e, st) {
      return _handleParsingError(e, st, json);
    } catch (e, st) {
      return _handleParsingError(e, st, json);
    }
  }

  @override
  Future<Result<int, CategoryFailure>> updateCategoryByFilter({
    required CategoryModel category,
    required CategoryQueryFilter filter,
  }) async {
    try {
      final result = await client.put(
        _url('filter', filter.toQuery()),
        body: category.toJson(),
      );
      return Result.success(result as int);
    } on DioException catch (e) {
      return _handleDioError(e);
    } catch (e, st) {
      return _handleParsingError(e, st, null);
    }
  }

  @override
  Future<Result<int, CategoryFailure>> deleteCategoryById({
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
  Future<Result<List<int>, CategoryFailure>> deleteCategoryByFilter({
    required CategoryQueryFilter filter,
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
  Future<Result<String, CategoryFailure>> uploadCategoryImage({
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
