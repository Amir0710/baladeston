import 'package:baladeston/domain/filters/category_query_filter.dart';
import 'package:baladeston/domain/entitys/category/category_entity.dart';
import 'package:baladeston/domain/usecase/category/add_image_usecase.dart';

abstract class CategoryRepository {
  Future<List<CategoryEntity>?> getCategoryByFilter(
      {required CategoryQueryFilter filter});

  Future<CategoryEntity?> getCategoryById({required int id});

  Future<CategoryEntity> createCategory({required CategoryEntity category});

  Future<CategoryEntity> updateCategory({required CategoryEntity category});

  Future<void> deleteCategoryById({required int id});
  Future<void> deleteCategoryByFilter({required CategoryQueryFilter filter});

  Future<int> countAllCategories({required CategoryQueryFilter filter});
  Future <List<CategoryEntity>?>  getAllCategory({required CategoryQueryFilter filter});
  Future<String> addImage({required dynamic imageFile});

}
