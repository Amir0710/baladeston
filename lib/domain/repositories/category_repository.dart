

import 'package:baladeston/domain/filters/category_query_filter.dart';
import 'package:baladeston/domain/entitys/category/category.dart';

abstract class CategoryRepository {

  Future<List<Category>> getCategory({required CategoryQueryFilter filter});
  Future<Category> fetchCategoryById({required int id});

  Future<void> createCategory({required Category category});

  Future<void> updateCategory({required Category category});

  Future<void> deleteCategory({required int id});


  Future<int> countAllCategories({required CategoryQueryFilter filter});
}
