import 'dart:io';

import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/category/datasource/remote/category_item_remote_datasource/category_item_api.dart';
import 'package:baladeston/data/category/filter/model/category_query_filter.dart';
import 'package:baladeston/data/category/mapper/model/category_mapper.dart';
import 'package:baladeston/domain/category/entity/category_entity/category_entity.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/repository/category/category_repository.dart';

class CategoryRepositoryImplementation extends CategoryRepository {
  final CategoryApi _api;

  CategoryRepositoryImplementation({required CategoryApi api}) : _api = api;

  @override
  Future<Result<int, CategoryFailure>> countCategory({
    required CategoryQueryFilter filter,
  }) {
    return _api.countAllCategory(filter: filter);
  }

  @override
  Future<Result<String, CategoryFailure>> uploadCategoryImage({
    required File image,
  }) {
    return _api.uploadCategoryImage(image: image);
  }

  @override
  Future<Result<CategoryEntity, CategoryFailure>> createCategory({
    required CategoryEntity category,
  }) async {
    final model = category.toModel();
    final result = await _api.createCategory(category: model);

    return result.map(
      success: (s) => Result.success(s.data.toEntity()),
      failure: (f) => Result.failure(f.failure),
    );
  }

  @override
  Future<Result<List<int>, CategoryFailure>> deleteCategoryByFilter({
    required CategoryQueryFilter filter,
  }) {
    return _api.deleteCategoryByFilter(filter: filter);
  }

  @override
  Future<Result<int, CategoryFailure>> deleteCategoryById({
    required int id,
  }) {
    return _api.deleteCategoryById(id: id);
  }

  @override
  Future<Result<List<CategoryEntity>, CategoryFailure>> getCategoryByFilter({
    required CategoryQueryFilter filter,
  }) async {
    final result = await _api.getCategoryByFilter(filter: filter);

    return result.map(
      success: (s) => Result.success(s.data.map((e) => e.toEntity()).toList()),
      failure: (f) => Result.failure(f.failure),
    );
  }

  @override
  Future<Result<CategoryEntity, CategoryFailure>> getCategoryById({
    required int id,
  }) async {
    final result = await _api.getCategoryById(id: id);

    return result.map(
      success: (s) => Result.success(s.data.toEntity()),
      failure: (f) => Result.failure(f.failure),
    );
  }

  @override
  Future<Result<int, CategoryFailure>> updateCategoryByFilter({
    required CategoryEntity category,
    required CategoryQueryFilter filter,
  }) async {
    final model = category.toModel();
    final result =
        await _api.updateCategoryByFilter(category: model, filter: filter);

    return result.map(
      success: (s) => Result.success(s.data),
      failure: (f) => Result.failure(f.failure),
    );
  }

  @override
  Future<Result<CategoryEntity, CategoryFailure>> updateCategoryById({
    required CategoryEntity category,
    required int id,
  }) async {
    final model = category.toModel();
    final result = await _api.updateCategoryById(category: model, id: id);

    return result.map(
      success: (s) => Result.success(s.data.toEntity()),
      failure: (f) => Result.failure(f.failure),
    );
  }
}
