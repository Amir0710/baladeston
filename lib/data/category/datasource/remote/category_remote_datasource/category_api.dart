import 'dart:io';

import 'package:baladeston/data/category/filter/category_query_filter.dart';
import 'package:baladeston/data/category/model/category_model.dart';

abstract class CategoryApi {

  Future<List<CategoryModel>> getCategoryByFilter({
    required CategoryQueryFilter filter,
  });

  Future<CategoryModel> getCategoryById({
    required int id,
  });

  Future<List<CategoryModel>> getAllCategory({
    required CategoryQueryFilter filter,
  });

  Future<int> countAllCategory({
    required CategoryQueryFilter filter,
  });


  Future<CategoryModel> createCategory({
    required CategoryModel category,
  });


  Future<CategoryModel> updateCategoryById({
    required CategoryModel category,
    required int id,
  });

  Future<List<CategoryModel>> updateCategoryByFilter({
    required CategoryModel category,
    required CategoryQueryFilter filter,
  });


  Future<int> deleteCategoryById({
    required int id,
  });

  Future<List<int>> deleteCategoryByFilter({
    required CategoryQueryFilter filter,
  });


  Future<String> uploadCategoryImage({
    required File image,
    required int id,
  });
}
