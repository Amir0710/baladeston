// lib/application/category/category_cubit.dart

import 'package:baladeston/domain/filters/category_query_filter.dart';
import 'package:baladeston/domain/entitys/category/category_entity.dart';
import 'package:baladeston/domain/usecase/category/count_all_categories_usecase.dart';
import 'package:baladeston/domain/usecase/category/create_category_usecase.dart';
import 'package:baladeston/domain/usecase/category/delete_category_by_filter_usecase.dart';
import 'package:baladeston/domain/usecase/category/delete_category_by_id_usecase.dart';
import 'package:baladeston/domain/usecase/category/get_all_category_usecase.dart';
import 'package:baladeston/domain/usecase/category/get_category_by_filter_usecase.dart';
import 'package:baladeston/domain/usecase/category/get_category_by_id_usecase.dart';
import 'package:baladeston/domain/usecase/category/update_category_usecase.dart';
import 'package:bloc/bloc.dart';
import 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  final CreateCategoryUseCase _createUseCase;
  final UpdateCategoryUseCase _updateUseCase;
  final CountAllCategoriesUseCase _countUseCase;
  final DeleteCategoryByIdUseCase _deleteByIdUseCase;
  final DeleteCategoryByFilterUseCase _deleteByFilterUseCase;
  final GetCategoryByFilterUseCase _getByFilterUseCase;
  final GetCategoryByIdUseCase _getByIdUseCase;
  final GetAllCategoryUsecase _getAllCategory;

  CategoryCubit({
    required CreateCategoryUseCase createUseCase,
    required UpdateCategoryUseCase updateUseCase,
    required CountAllCategoriesUseCase countUseCase,
    required DeleteCategoryByIdUseCase deleteByIdUseCase,
    required DeleteCategoryByFilterUseCase deleteByFilterUseCase,
    required GetCategoryByFilterUseCase getByFilterUseCase,
    required GetCategoryByIdUseCase getByIdUseCase,
    required GetAllCategoryUsecase getAllCategory,
  })  : _createUseCase = createUseCase,
        _updateUseCase = updateUseCase,
        _countUseCase = countUseCase,
        _deleteByIdUseCase = deleteByIdUseCase,
        _deleteByFilterUseCase = deleteByFilterUseCase,
        _getByFilterUseCase = getByFilterUseCase,
        _getByIdUseCase = getByIdUseCase,
        _getAllCategory = getAllCategory,
        super(const CategoryState.initial());

  Future<void> loadCategories(CategoryQueryFilter filter) async {
    emit(const CategoryState.loading());
    try {
      final categories = await _getByFilterUseCase(filter) ?? [];
      final count = await _countUseCase(filter: filter);
      emit(CategoryState.success(categories: categories, count: count));
    } catch (e) {
      emit(CategoryState.failure(message: e.toString()));
    }
  }

  Future<void> loadAllCategories(CategoryQueryFilter filter) async {
    emit(const CategoryState.loading());
    try {
      final categories = await _getAllCategory(filter) ?? [];
      final count = await _countUseCase(filter: filter);
      emit(CategoryState.success(categories: categories, count: count));
    } catch (e) {
      emit(CategoryState.failure(message: e.toString()));
    }
  }


  Future<void> loadCategoryById(int id) async {
    emit(const CategoryState.loading());
    try {
      final category = await _getByIdUseCase(id);
      if (category != null) {
        emit(CategoryState.success(categories: [category], count: 1));
      } else {
        emit(const CategoryState.failure(message: 'Category not found'));
      }
    } catch (e) {
      emit(CategoryState.failure(message: e.toString()));
    }
  }

  Future<void> addCategory(CategoryEntity category, CategoryQueryFilter refreshFilter) async {
    emit(const CategoryState.loading());
    try {
      await _createUseCase(category);
      await loadCategories(refreshFilter);
    } catch (e) {
      emit(CategoryState.failure(message: e.toString()));
    }
  }

  Future<void> updateCategory(CategoryEntity category, CategoryQueryFilter refreshFilter) async {
    emit(const CategoryState.loading());
    try {
      await _updateUseCase(category);
      await loadCategories(refreshFilter);
    } catch (e) {
      emit(CategoryState.failure(message: e.toString()));
    }
  }

  Future<void> deleteCategoryById(int id, CategoryQueryFilter refreshFilter) async {
    emit(const CategoryState.loading());
    try {
      await _deleteByIdUseCase(id);
      await loadCategories(refreshFilter);
    } catch (e) {
      emit(CategoryState.failure(message: e.toString()));
    }
  }

  Future<void> deleteCategoriesByFilter(CategoryQueryFilter filter, CategoryQueryFilter refreshFilter) async {
    emit(const CategoryState.loading());
    try {
      await _deleteByFilterUseCase(filter);
      await loadCategories(refreshFilter);
    } catch (e) {
      emit(CategoryState.failure(message: e.toString()));
    }
  }
}
