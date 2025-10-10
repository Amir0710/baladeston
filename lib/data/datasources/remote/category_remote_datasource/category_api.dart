import 'package:baladeston/data/models/category/category_model.dart';
import 'package:baladeston/domain/filters/category_query_filter.dart';

abstract class CategoryApi {
  Future<List<CategoryModel>?> getCategoryByFilter(
      {required CategoryQueryFilter filter});

  Future<CategoryModel?> getCategoryById({required int id});

  Future<CategoryModel> createCategory({required CategoryModel category});

  Future<CategoryModel> updateCategory({required CategoryModel category});

  Future<void> deleteCategoryByFilter({ required CategoryQueryFilter filter});

  Future<void> deleteCategoryById({required int id});

  Future<int> countAllCategories({required CategoryQueryFilter filter});

  Future<List<CategoryModel>?> getAllCategory(
      {required CategoryQueryFilter filter});
  Future<String> addImage({required dynamic imageFile});

}

