

import 'package:baladeston/domain/filters/category_query_filter.dart';
import 'package:baladeston/domain/entitys/category/category_entity.dart';

abstract class CategoryRepository {

  Future<List<CategoryEntity>> getCategory({required CategoryQueryFilter filter});
  Future<CategoryEntity> fetchCategoryById({required int id});

  Future<void> createCategory({required CategoryEntity category});

  Future<void> updateCategory({required CategoryEntity category});

  Future<void> deleteCategory({required int id});


  Future<int> countAllCategories({required CategoryQueryFilter filter});
}
