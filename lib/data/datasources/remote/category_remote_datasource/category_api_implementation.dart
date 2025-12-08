import 'dart:io';

import 'package:baladeston/config/app_config.dart';
import 'package:baladeston/data/models/category/category_model.dart';
import 'package:baladeston/domain/filters/category_query_filter.dart';
import 'package:flutter/foundation.dart';

import 'category_api.dart';

class CategoryApiImplementation extends CategoryApi {
  final String _baseUrl = AppConfig.apiBaseUrl;

  Uri _url(String path) => Uri.parse('$_baseUrl/category/$path');

  @override
  Future<String> addImage({required imageFile}) {
    // TODO: implement addImage
    throw UnimplementedError();
  }

  @override
  Future<int> countAllCategories({required CategoryQueryFilter filter}) {
    // TODO: implement countAllCategories
    throw UnimplementedError();
  }

  @override
  Future<CategoryModel> createCategory({required CategoryModel category}) {
    // TODO: implement createCategory
    throw UnimplementedError();
  }

  @override
  Future<void> deleteCategoryByFilter({required CategoryQueryFilter filter}) {
    // TODO: implement deleteCategoryByFilter
    throw UnimplementedError();
  }

  @override
  Future<void> deleteCategoryById({required int id}) {
    // TODO: implement deleteCategoryById
    throw UnimplementedError();
  }

  @override
  Future<List<CategoryModel>?> getAllCategory({required CategoryQueryFilter filter}) {
    // TODO: implement getAllCategory
    throw UnimplementedError();
  }

  @override
  Future<List<CategoryModel>?> getCategoryByFilter({required CategoryQueryFilter filter}) {
    // TODO: implement getCategoryByFilter
    throw UnimplementedError();
  }

  @override
  Future<CategoryModel?> getCategoryById({required int id}) {
    // TODO: implement getCategoryById
    throw UnimplementedError();
  }

  @override
  Future<CategoryModel> updateCategory({required CategoryModel category}) {
    // TODO: implement updateCategory
    throw UnimplementedError();
  }

  
}
