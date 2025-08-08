// lib/application/category/category_cubit.dart

import 'package:baladeston/domain/filters/category_query_filter.dart';
import 'package:baladeston/domain/entitys/category/category_entity.dart';
import 'package:baladeston/domain/usecase/category/count_all_categories_usecase.dart';
import 'package:baladeston/domain/usecase/category/create_category_usecase.dart';
import 'package:baladeston/domain/usecase/category/delete_category_usecase.dart';
import 'package:baladeston/domain/usecase/category/get_category_by_filter_usecase.dart';
import 'package:baladeston/domain/usecase/category/update_category_usecase.dart';
import 'package:bloc/bloc.dart';

import 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  final CreateCategoryUseCase _createUseCase;
  final UpdateCategoryUseCase _updateUseCase;
  final CountAllCategoriesUseCase _countUseCase;
  final DeleteCategoryUseCase _deleteUseCase;
  final GetCategoryByFilterUseCase _getByFilterUseCase;

  CategoryCubit(
      {required CreateCategoryUseCase createUseCase,
      required UpdateCategoryUseCase updateUseCase,
      required CountAllCategoriesUseCase countUseCase,
      required DeleteCategoryUseCase deleteUseCase,
      required GetCategoryByFilterUseCase getByFilterUseCase})
      : _createUseCase = createUseCase,
        _updateUseCase = updateUseCase,
        _countUseCase = countUseCase,
        _deleteUseCase = deleteUseCase,
        _getByFilterUseCase = getByFilterUseCase,
        super(const CategoryState.initial());

  Future<void> loadCategories([CategoryQueryFilter? filter]) async {
    emit(const CategoryState.loading());
    try {
      final f = filter ?? CategoryQueryFilter();
      final categories = await _getByFilterUseCase(f);
      final count = await _countUseCase();
      emit(CategoryState.success(categories: categories, count: count));
    } catch (e) {
      emit(CategoryState.failure(message: e.toString()));
    }
  }

  /// ایجاد دسته‌بندی جدید
  Future<void> addCategory(CategoryEntity category) async {
    emit(const CategoryState.loading());
    try {
      await _createUseCase(category);
      await loadCategories();
    } catch (e) {
      emit(CategoryState.failure(message: e.toString()));
    }
  }

  /// ویرایش دسته‌بندی
  Future<void> updateCategory(CategoryEntity category) async {
    emit(const CategoryState.loading());
    try {
      await _updateUseCase(category);
      await loadCategories();
    } catch (e) {
      emit(CategoryState.failure(message: e.toString()));
    }
  }

  /// حذف دسته‌بندی
  Future<void> deleteCategory(int id) async {
    emit(const CategoryState.loading());
    try {
      await _deleteUseCase(id);
      await loadCategories();
    } catch (e) {
      emit(CategoryState.failure(message: e.toString()));
    }
  }
}
