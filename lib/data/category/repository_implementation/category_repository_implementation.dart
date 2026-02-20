import 'dart:io';

import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/category/datasource/remote/category_remote_datasource/category_api.dart';
import 'package:baladeston/data/category/filter/category_query_filter.dart';
import 'package:baladeston/data/category/mapper/category_mapper.dart';
import 'package:baladeston/domain/category/entity/category_entity.dart';
import 'package:baladeston/domain/category/failure/category_failure.dart';
import 'package:baladeston/domain/category/failure/category_failure_mapper.dart';
import 'package:baladeston/domain/category/repository/category_repository.dart';

class CategoryRepositoryImplementation extends CategoryRepository {
  final CategoryApi _api;

  CategoryRepositoryImplementation({required CategoryApi api}) : _api = api;

  @override
  Future<Result<int, CategoryFailure>> countAllCategory({
    required CategoryQueryFilter filter,
  }) async {
    try {
      final result = await _api.countAllCategory(filter: filter);
      return Result.success(result);
    } catch (error) {
      return Result.failure(mapCategoryException(error));
    }
  }



  @override
  Future<Result<String, CategoryFailure>> uploadCategoryImage({
    required File image,
    required int id,
  }) async {
    try {
      final result = await _api.uploadCategoryImage(image: image, id: id);
      return Result.success(result);
    } catch (error) {
      return Result.failure(mapCategoryException(error));
    }
  }

  @override
  Future<Result<CategoryEntity, CategoryFailure>> createCategory({
    required CategoryEntity category,
  }) async {
    try {
      final model = category.toModel();
      final resultModel = await _api.createCategory(category: model);
      return Result.success(resultModel.toEntity());
    } catch (error) {
      return Result.failure(mapCategoryException(error));
    }
  }

  @override
  Future<Result<List<int>, CategoryFailure>> deleteCategoryByFilter({
    required CategoryQueryFilter filter,
  }) async {
    try {
      final ids = await _api.deleteCategoryByFilter(filter: filter);
      return Result.success(ids);
    } catch (error) {
      return Result.failure(mapCategoryException(error));
    }
  }

  @override
  Future<Result<int, CategoryFailure>> deleteCategoryById({
    required int id,
  }) async {
    try {
      final deletedId = await _api.deleteCategoryById(id: id);
      return Result.success(deletedId);
    } catch (error) {
      return Result.failure(mapCategoryException(error));
    }
  }

  @override
  Future<Result<List<CategoryEntity>, CategoryFailure>> getAllCategory({
    required CategoryQueryFilter filter,
  }) async {
    try {
      final models = await _api.getAllCategory(filter: filter);
      return Result.success(models.map((e) => e.toEntity()).toList());
    } catch (error) {
      return Result.failure(mapCategoryException(error));
    }
  }

  @override
  Future<Result<List<CategoryEntity>, CategoryFailure>> getCategoryByFilter({
    required CategoryQueryFilter filter,
  }) async {
    try {
      final models = await _api.getCategoryByFilter(filter: filter);
      return Result.success(models.map((e) => e.toEntity()).toList());
    } catch (error) {
      return Result.failure(mapCategoryException(error));
    }
  }

  @override
  Future<Result<CategoryEntity, CategoryFailure>> getCategoryById({
    required int id,
  }) async {
    try {
      final model = await _api.getCategoryById(id: id);
      return Result.success(model.toEntity());
    } catch (error) {
      return Result.failure(mapCategoryException(error));
    }
  }

  @override
  Future<Result<List<CategoryEntity>, CategoryFailure>> updateCategoryByFilter({
    required CategoryEntity category,
    required CategoryQueryFilter filter,
  }) async {
    try {
      final model = category.toModel();
      final models =
      await _api.updateCategoryByFilter(category: model, filter: filter);
      return Result.success(models.map((e) => e.toEntity()).toList());
    } catch (error) {
      return Result.failure(mapCategoryException(error));
    }
  }

  @override
  Future<Result<CategoryEntity, CategoryFailure>> updateCategoryById({
    required CategoryEntity category,
    required int id,
  }) async {
    try {
      final model = category.toModel();
      final updatedModel =
      await _api.updateCategoryById(category: model, id: id);
      return Result.success(updatedModel.toEntity());
    } catch (error) {
      return Result.failure(mapCategoryException(error));
    }
  }
}
