

import 'package:baladeston/domain/filters/category_query_filter.dart';
import 'package:baladeston/domain/entitys/category/category.dart';

abstract class CategoryRepository {
  Future<void> createCategory({required Category collection});

  Future<void> updateCategory({required Category collection});

  Future<void> deleteCategory({required int id});

  Future<List<Category>> getCategory({required CategoryQueryFilter filter});

  Future<int> countAllCategories();
}
