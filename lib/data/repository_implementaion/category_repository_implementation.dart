import 'package:baladeston/data/datasources/remote/category_remote_datasource/category_api.dart';
import 'package:baladeston/data/models/category/category_model.dart';
import 'package:baladeston/domain/entitys/category/category_entity.dart';
import 'package:baladeston/domain/filters/category_query_filter.dart';
import 'package:baladeston/domain/repositories/category_repository.dart';

class CategoryRepositoryImplementation extends CategoryRepository {
  final CategoryApi _api;

  CategoryRepositoryImplementation({required CategoryApi api}) : _api = api;

  @override
  Future<int> countAllCategories({required CategoryQueryFilter filter}) async {
    try {
      return await _api.countAllCategories(filter: filter);
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<CategoryEntity> createCategory({required CategoryEntity category}) async {
    try {
      // Entity ➡ Model
      final model = CategoryModel.fromEntity(category);
      final resultModel = await _api.createCategory(category: model);
      // Model ➡ Entity
      return resultModel.toEntity();
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<void> deleteCategoryById({required int id}) async {
    try {
      await _api.deleteCategoryById(id: id);
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<void> deleteCategoryByFilter({required CategoryQueryFilter filter}) async {
    try {
      await _api.deleteCategoryByFilter(filter: filter);
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<List<CategoryEntity>> getCategoryByFilter({required CategoryQueryFilter filter}) async {
    try {
      final models = await _api.getCategoryByFilter(filter: filter);
      return models.map((m) => m.toEntity()).toList();
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<CategoryEntity> updateCategory({required CategoryEntity category}) async {
    try {
      final model = CategoryModel.fromEntity(category);
      final updatedModel = await _api.updateCategory(category: model);
      return updatedModel.toEntity();
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<CategoryEntity> getCategoryById({required int id}) async {
    try {
      final model = await _api.getCategoryById(id: id);
      return model.toEntity();
    } catch (e) {
      throw Exception('error $e');
    }
  }
}
