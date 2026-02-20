import 'dart:io';

import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/category/filter/category_query_filter.dart';
import 'package:baladeston/domain/category/entity/category_entity.dart';
import 'package:baladeston/domain/category/failure/category_failure.dart';

abstract class  CategoryRepository {
  Future<Result<List<CategoryEntity>, CategoryFailure>> getCategoryByFilter({
    required CategoryQueryFilter filter,
  });

  Future<Result<CategoryEntity, CategoryFailure>> getCategoryById({
    required int id,
  });

  Future<Result<CategoryEntity, CategoryFailure>> createCategory({
    required CategoryEntity category,
  });

  Future<Result<List<CategoryEntity>, CategoryFailure>> updateCategoryByFilter({
    required CategoryEntity category,
    required CategoryQueryFilter filter,
  });
  Future<Result<CategoryEntity, CategoryFailure>> updateCategoryById({
    required CategoryEntity category,
    required int id ,
  });

  Future<Result<int, CategoryFailure>> deleteCategoryById({
    required int id,
  });

  Future<Result<List<int>, CategoryFailure>> deleteCategoryByFilter({
    required CategoryQueryFilter filter,
  });

  Future<Result<int, CategoryFailure>> countAllCategory({
    required CategoryQueryFilter filter,
  });

  Future<Result<List<CategoryEntity>, CategoryFailure>> getAllCategory({
    required CategoryQueryFilter filter,
  });

  Future<Result<String, CategoryFailure>> uploadCategoryImage({
    required File image,
    required int id,
  });
}
