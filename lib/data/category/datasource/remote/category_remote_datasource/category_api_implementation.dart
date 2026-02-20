  import 'dart:io';

import 'package:baladeston/config/app_config.dart';
import 'package:baladeston/data/category/filter/category_query_filter.dart';
import 'package:baladeston/data/category/model/category_model.dart';

import 'category_api.dart';

class CategoryApiImplementation extends CategoryApi {
  final String _baseUrl = AppConfig.apiBaseUrl;

  Uri _url(String path) => Uri.parse('$_baseUrl/category/$path');

  // ------------------------------------------------------
  // Query
  // ------------------------------------------------------

  @override
  Future<List<CategoryModel>> getCategoryByFilter({
    required CategoryQueryFilter filter,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<CategoryModel> getCategoryById({
    required int id,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<List<CategoryModel>> getAllCategory({
    required CategoryQueryFilter filter,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<int> countAllCategory({
    required CategoryQueryFilter filter,
  }) {
    throw UnimplementedError();
  }

  // ------------------------------------------------------
  // Create
  // ------------------------------------------------------

  @override
  Future<CategoryModel> createCategory({
    required CategoryModel category,
  }) {
    throw UnimplementedError();
  }

  // ------------------------------------------------------
  // Update
  // ------------------------------------------------------

  @override
  Future<CategoryModel> updateCategoryById({
    required CategoryModel category,
    required int id,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<List<CategoryModel>> updateCategoryByFilter({
    required CategoryModel category,
    required CategoryQueryFilter filter,
  }) {
    throw UnimplementedError();
  }

  // ------------------------------------------------------
  // Delete
  // ------------------------------------------------------

  @override
  Future<int> deleteCategoryById({
    required int id,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<List<int>> deleteCategoryByFilter({
    required CategoryQueryFilter filter,
  }) {
    throw UnimplementedError();
  }

  // ------------------------------------------------------
  // Image
  // ------------------------------------------------------

  @override
  Future<String> uploadCategoryImage({
    required File image,
    required int id,
  }) {
    throw UnimplementedError();
  }


}
