import 'dart:io';

import 'package:baladeston/data/category/filter/category_query_filter.dart';
import 'package:baladeston/domain/category/entity/category_entity.dart';
import 'package:baladeston/domain/category/usecase/count_all/count_all_category_usecase.dart';
import 'package:baladeston/domain/category/usecase/create_category/create_category_usecase.dart';
import 'package:baladeston/domain/category/usecase/delete_by_filter/delete_category_by_filter_usecase.dart';
import 'package:baladeston/domain/category/usecase/delete_by_id/delete_category_by_id_usecase.dart';
import 'package:baladeston/domain/category/usecase/get_all/get_all_category_usecase.dart';
import 'package:baladeston/domain/category/usecase/get_by_filter/get_category_by_filter_usecase.dart';
import 'package:baladeston/domain/category/usecase/get_by_id/get_category_by_id_usecase.dart';
import 'package:baladeston/domain/category/usecase/update_by_filter/update_category_by_filter_usecase.dart';
import 'package:baladeston/domain/category/usecase/update_by_id/update_category_by_id_usecase.dart';
import 'package:baladeston/domain/category/usecase/upload_category_image/upload_category_image_usecase.dart';
import 'package:bloc/bloc.dart';

import 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  final CreateCategoryUseCase _createUseCase;
  final UpdateCategoryByFilterUseCase _updateByFilterUseCase;
  final UpdateCategoryByIdUseCase _updateByIdUseCase;
  final CountAllCategoryUseCase _countUseCase;
  final DeleteCategoryByIdUseCase _deleteByIdUseCase;
  final DeleteCategoryByFilterUseCase _deleteByFilterUseCase;
  final GetCategoryByFilterUseCase _getByFilterUseCase;
  final GetCategoryByIdUseCase _getByIdUseCase;
  final GetAllCategoryUseCase _getAllCategory;
  final UploadCategoryImageUseCase _addImage;

  CategoryCubit({
    required CreateCategoryUseCase createUseCase,
    required UpdateCategoryByFilterUseCase updateByFilterUseCase,
    required UpdateCategoryByIdUseCase updateByIdUseCase,
    required CountAllCategoryUseCase countUseCase,
    required DeleteCategoryByIdUseCase deleteByIdUseCase,
    required DeleteCategoryByFilterUseCase deleteByFilterUseCase,
    required GetCategoryByFilterUseCase getByFilterUseCase,
    required GetCategoryByIdUseCase getByIdUseCase,
    required GetAllCategoryUseCase getAllCategoryUseCase,
    required UploadCategoryImageUseCase addImageUseCase,
  })  : _createUseCase = createUseCase,
        _updateByFilterUseCase = updateByFilterUseCase,
        _updateByIdUseCase = updateByIdUseCase,
        _countUseCase = countUseCase,
        _deleteByIdUseCase = deleteByIdUseCase,
        _deleteByFilterUseCase = deleteByFilterUseCase,
        _getByFilterUseCase = getByFilterUseCase,
        _getByIdUseCase = getByIdUseCase,
        _getAllCategory = getAllCategoryUseCase,
        _addImage = addImageUseCase,
        super(const CategoryState.initial());

  /* ------------------------------ LOAD LIST ------------------------------ */

  Future<void> loadCategoryByFilter(
      {required CategoryQueryFilter filter}) async {
    emit(const CategoryState.fetchingCategory());

    final result = await _getByFilterUseCase(filter: filter);

    await result.when(
      success: (categories) async {
        final countResult = await _countUseCase(filter: filter);

        final count = countResult.when(
          success: (value) => value,
          failure: (error) => 0,
        );

        emit(CategoryState.successListLoaded(
          category: categories,
          count: count,
        ));
      },
      failure: (error) {
        emit(CategoryState.error(
          error: CategoryStateError.errorWhileGettingCategory,
          errorMessage: 'خطا در دریافت لیست دسته‌بندی$error',
        ));
      },
    );
  }

  /* ---------------------------- LOAD ALL LIST ---------------------------- */

  Future<void> loadAllCategory({required CategoryQueryFilter filter}) async {
    emit(const CategoryState.fetchingAllCategory());

    final result = await _getAllCategory(filter: filter);

    await result.when(
      success: (categories) async {
        final countResult = await _countUseCase(filter: filter);
        final count = countResult.when(
          success: (value) => value,
          failure: (error) => 0,
        );

        emit(CategoryState.successListLoaded(
          category: categories,
          count: count,
        ));
      },
      failure: (error) {
        emit(CategoryState.error(
          error: CategoryStateError.errorWhileGettingAllCategory,
          errorMessage: 'خطا در دریافت همه دسته‌بندی‌ها$error',
        ));
      },
    );
  }

  /* -------------------------------- LOAD SINGLE -------------------------------- */

  Future<void> loadCategoryById({required int id}) async {
    emit(const CategoryState.fetchingCategory());

    final result = await _getByIdUseCase(id: id);

    result.when(
      success: (category) {
        emit(CategoryState.successSingleLoaded(category: category));
      },
      failure: (error) {
        emit(CategoryState.error(
          error: CategoryStateError.categoryNotFound,
          errorMessage: 'دسته‌بندی پیدا نشد$error',
        ));
      },
    );
  }

  /* -------------------------------- CREATE -------------------------------- */

  Future<void> addCategory({required CategoryEntity category}) async {
    emit(CategoryState.createdCategory(category: category));

    final result = await _createUseCase(category: category);

    result.when(
      success: (createdCategory) {
        emit(CategoryState.createdCategory(
          category: createdCategory,
        ));
      },
      failure: (error) {
        emit(CategoryState.error(
          error: CategoryStateError.errorWhileAddingCategory,
          errorMessage: 'خطا در افزودن دسته‌بندی$error',
        ));
      },
    );
  }

  /* -------------------------------- UPDATE BY FILTER -------------------------------- */

  Future<void> updateCategoryByFilter({
    required CategoryEntity category,
    required CategoryQueryFilter filter,
  }) async {
    emit(const CategoryState.updatingCategory());

    final result = await _updateByFilterUseCase(
      category: category,
      filter: filter,
    );

    await result.when(
      success: (error) async {
        final listResult = await _getByFilterUseCase(filter: filter);
        final countResult = await _countUseCase(filter: filter);

        final categories = listResult.when(
          success: (list) => list,
          failure: (error) => <CategoryEntity>[],
        );

        final count = countResult.when(
          success: (value) => value,
          failure: (error) => 0,
        );

        emit(CategoryState.successListLoaded(
          category: categories,
          count: count,
        ));
      },
      failure: (error) {
        emit(CategoryState.error(
          error: CategoryStateError.errorWhileUpdatingCategory,
          errorMessage: 'خطا در ویرایش دسته‌بندی$error',
        ));
      },
    );
  }

  /* -------------------------------- UPDATE BY ID -------------------------------- */

  Future<void> updateCategoryById({
    required CategoryEntity category,
    required int id,
  }) async {
    emit(const CategoryState.updatingCategory());

    final result = await _updateByIdUseCase(id: id, category: category);

    await result.when(
      success: (value) async {
        emit(CategoryState.updatedSingleCategory(category: value));
      },
      failure: (error) {
        emit(CategoryState.error(
          error: CategoryStateError.errorWhileUpdatingCategory,
          errorMessage: 'خطا در ویرایش دسته‌بندی$error',
        ));
      },
    );
  }

  /* ----------------------------- DELETE BY ID ----------------------------- */

  Future<void> deleteCategoryById({required int id}) async {
    emit(const CategoryState.deletingCategory());

    final result = await _deleteByIdUseCase(id: id);

    result.when(
      success: (value) {
        emit(CategoryState.deletedSingleCategory(id: value));
      },
      failure: (error) {
        emit(CategoryState.error(
          error: CategoryStateError.errorWhileDeletingCategory,
          errorMessage: 'خطا در حذف دسته‌بندی$error',
        ));
      },
    );
  }

  /* --------------------------- DELETE BY FILTER --------------------------- */

  Future<void> deleteCategoryByFilter(
      {required CategoryQueryFilter filter}) async {
    emit(const CategoryState.deletingCategory());

    final result = await _deleteByFilterUseCase(filter: filter);

    result.when(
      success: (value) {
        emit(CategoryState.deletedListCategory(id: value));
      },
      failure: (error) {
        emit(CategoryState.error(
          error: CategoryStateError.errorWhileDeletingCategory,
          errorMessage: 'خطا در حذف دسته‌بندی‌ها$error',
        ));
      },
    );
  }

  /* ------------------------------ ADD IMAGE ------------------------------ */

  Future<void> addCategoryImage({
    required int categoryId,
    required File imageFile,
  }) async {
    emit(const CategoryState.uploadingImageCategory());

    final result = await _addImage(id: categoryId, image: imageFile);

    result.when(
      success: (value) {
        emit(CategoryState.uploadedImageCategory(path: value));
      },
      failure: (error) {
        emit(CategoryState.error(
          error: CategoryStateError.errorWhileAddingImage,
          errorMessage: ' خطا در افزودن تصویر$error',
        ));
      },
    );

  }

/* ----------------------------- UPDATE IMAGE ---------------------------- */
  Future<void> countCategory({required CategoryQueryFilter filter}) async {
    emit(const CategoryState.countingCategory());

    final result = await _countUseCase(filter: filter);

    result.when(
      success: (value) {
        emit(CategoryState.countedCategory(count: value));
      },
      failure: (error) {
        emit(CategoryState.error(
          error: CategoryStateError.errorWhileCountCategory,
          errorMessage: 'خطا در ویرایش تصویر$error',
        ));
      },
    );
  }
}
