import 'package:baladeston/domain/filters/category_query_filter.dart';
import 'package:flutter/foundation.dart';

abstract class CategoryRemoteDatasource {
  Future<List<Category>> fetchCategorys(CategoryQueryFilter filter);
  Future<Category> fetchCategoryById(int id);
  Future<void> updateCategory(Category category);
  Future<void> deleteCategory(int id);
  Future<void> createCategory(Category category);
  Future<int> countAllCategories(CategoryQueryFilter filter); 
}

