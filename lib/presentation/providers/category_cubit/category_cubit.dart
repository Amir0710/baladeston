// lib/application/category/category_cubit.dart

import 'package:baladeston/domain/filters/category_query_filter.dart';
import 'package:baladeston/domain/entitys/category/category_entity.dart';
import 'package:baladeston/domain/usecase/category/count_all_categories_usecase.dart';
import 'package:baladeston/domain/usecase/category/create_category_usecase.dart';
import 'package:baladeston/domain/usecase/category/delete_category_by_filter_usecase.dart';
import 'package:baladeston/domain/usecase/category/delete_category_by_id_usecase.dart';
import 'package:baladeston/domain/usecase/category/get_category_by_filter_usecase.dart';
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

 CategoryCubit(
 {
    required CreateCategoryUseCase createUseCase,
    required UpdateCategoryUseCase updateUseCase,
    required CountAllCategoriesUseCase countUseCase,
    required DeleteCategoryByIdUseCase deleteByIdUseCase,
    required DeleteCategoryByFilterUseCase deleteByFilterUseCase,
    required GetCategoryByFilterUseCase getByFilterUseCase,
  })  : _createUseCase = createUseCase,
        _updateUseCase = updateUseCase,
        _countUseCase = countUseCase,
        _deleteByIdUseCase = deleteByIdUseCase,
        _deleteByFilterUseCase = deleteByFilterUseCase,
        _getByFilterUseCase = getByFilterUseCase,   super(const CategoryState.initial());
        
        
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

  /// حذف دسته‌بندی با شناسه
  Future<void> deleteCategoryById(int id) async {
    emit(const CategoryState.loading());
    try {
      await _deleteByIdUseCase(id);
      await loadCategories();
    } catch (e) {
      emit(CategoryState.failure(message: e.toString()));
    }
  }

  /// حذف دسته‌بندی‌ها با فیلتر
  Future<void> deleteCategoriesByFilter(CategoryQueryFilter filter) async {
    emit(const CategoryState.loading());
    try {
      await _deleteByFilterUseCase(filter);
      await loadCategories();
    } catch (e) {
      emit(CategoryState.failure(message: e.toString()));
    }
  }
}
