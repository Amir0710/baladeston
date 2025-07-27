import 'package:baladeston/domain/entitys/category/category_entity.dart';
import 'package:baladeston/domain/filters/category_query_filter.dart';
import 'package:baladeston/domain/repositories/category_repository.dart';

class CategoryRepositoryImplementation extends CategoryRepository{
  @override
  Future<int> countAllCategories({required CategoryQueryFilter filter}) {
    // TODO: implement countAllCategories
    throw UnimplementedError();
  }

  @override
  Future<void> createCategory({required CategoryEntity category}) {
    // TODO: implement createCategory
    throw UnimplementedError();
  }

  @override
  Future<void> deleteCategory({required int id}) {
    // TODO: implement deleteCategory
    throw UnimplementedError();
  }

  @override
  Future<CategoryEntity> fetchCategoryById({required int id}) {
    // TODO: implement fetchCategoryById
    throw UnimplementedError();
  }

  @override
  Future<List<CategoryEntity>> getCategory({required CategoryQueryFilter filter}) {
    // TODO: implement getCategory
    throw UnimplementedError();
  }

  @override
  Future<void> updateCategory({required CategoryEntity category}) {
    // TODO: implement updateCategory
    throw UnimplementedError();
  }
}