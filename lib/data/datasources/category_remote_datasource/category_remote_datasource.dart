import 'package:baladeston/data/models/category/category_model.dart';
import 'package:baladeston/domain/filters/category_query_filter.dart';

abstract class CategoryRemoteDatasource {
  Future<List<CategoryModel>> fetchCategorys(CategoryQueryFilter filter);
  Future<CategoryModel> fetchCategoryById(int id);
  Future<void> updateCategory(CategoryModel category);
  Future<void> deleteCategory(int id);
  Future<void> createCategory(CategoryModel category);
  Future<int> countAllCategories(CategoryQueryFilter filter); 
}

