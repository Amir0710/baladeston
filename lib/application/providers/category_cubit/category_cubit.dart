import 'dart:io';

import 'package:baladeston/application/providers/category_cubit/category_state.dart';
import 'package:baladeston/data/category/filter/model/category_query_filter.dart';
import 'package:baladeston/domain/category/usecase/category/count_category/count_category_usecase.dart';
import 'package:baladeston/domain/category/usecase/create_category/create_category_usecase.dart';
import 'package:baladeston/domain/category/usecase/delete_by_filter/delete_category_by_filter_usecase.dart';
import 'package:baladeston/domain/category/usecase/delete_by_id/delete_category_by_id_usecase.dart';
import 'package:baladeston/domain/category/usecase/get_by_filter/get_category_by_filter_usecase.dart';
import 'package:baladeston/domain/category/usecase/get_by_id/get_category_by_id_usecase.dart';
import 'package:baladeston/domain/category/usecase/update_by_filter/update_category_by_filter_usecase.dart';
import 'package:baladeston/domain/category/usecase/update_by_id/update_category_by_id_usecase.dart';
import 'package:baladeston/domain/category/usecase/upload_category_image/upload_category_image_usecase.dart';
import 'package:baladeston/presentation/mapper/comment/category_failure_mapper.dart';
import 'package:bloc/bloc.dart';

class CategoryCubit extends Cubit<CategoryState> {
  final CreateCategoryUseCase _createUseCase;
  final UpdateCategoryByFilterUseCase _updateByFilterUseCase;
  final UpdateCategoryByIdUseCase _updateByIdUseCase;
  final CountCategoryUseCase _countUseCase;
  final DeleteCategoryByIdUseCase _deleteByIdUseCase;
  final DeleteCategoryByFilterUseCase _deleteByFilterUseCase;
  final GetCategoryByFilterUseCase _getByFilterUseCase;
  final GetCategoryByIdUseCase _getByIdUseCase;
  final UploadCategoryImageUseCase _uploadImageUseCase;

  CategoryCubit({
    required CreateCategoryUseCase createUseCase,
    required UpdateCategoryByFilterUseCase updateByFilterUseCase,
    required UpdateCategoryByIdUseCase updateByIdUseCase,
    required CountCategoryUseCase countUseCase,
    required DeleteCategoryByIdUseCase deleteByIdUseCase,
    required DeleteCategoryByFilterUseCase deleteByFilterUseCase,
    required GetCategoryByFilterUseCase getByFilterUseCase,
    required GetCategoryByIdUseCase getByIdUseCase,
    required UploadCategoryImageUseCase uploadImageUseCase,
  })  : _createUseCase = createUseCase,
        _updateByFilterUseCase = updateByFilterUseCase,
        _updateByIdUseCase = updateByIdUseCase,
        _countUseCase = countUseCase,
        _deleteByIdUseCase = deleteByIdUseCase,
        _deleteByFilterUseCase = deleteByFilterUseCase,
        _getByFilterUseCase = getByFilterUseCase,
        _getByIdUseCase = getByIdUseCase,
        _uploadImageUseCase = uploadImageUseCase,
        super(const CategoryState.initial());

  // ------------------------------------------------
  // Internal Failure Handler
  // ------------------------------------------------

  void _emitFailure(CategoryFailure failure) {
    emit(
      CategoryState.error(
        error: mapCategoryFailureToStateError(failure),
        failure: failure,
      ),
    );
  }

  // ------------------------------------------------
  // READ
  // ------------------------------------------------

  Future<void> getCategoriesByFilter({
    required CategoryQueryFilter filter,
  }) async {
    emit(const CategoryState.fetchingCategory());

    // اجرای همزمان دریافت لیست و تعداد کل
    final (listResult, countResult) = await (
      _getByFilterUseCase(categoryItemFilter: filter),
      _countUseCase(filter: filter),
    ).wait;

    listResult.when(
      success: (categories) {
        countResult.when(
          success: (count) {
            emit(
              CategoryState.successListLoaded(
                categories: categories,
                count: count,
              ),
            );
          },
          failure: _emitFailure,
        );
      },
      failure: _emitFailure,
    );
  }

  Future<void> getCategoryById({required int id}) async {
    emit(const CategoryState.fetchingCategory());

    final result = await _getByIdUseCase(id: id);

    result.when(
      success: (category) =>
          emit(CategoryState.successSingleLoaded(category: category)),
      failure: _emitFailure,
    );
  }

  // ------------------------------------------------
  // CREATE
  // ------------------------------------------------

  Future<void> createCategory({
    required CategoryEntity category,
  }) async {
    emit(const CategoryState.creatingCategory()); // وضعیت در حال ساخت

    final result = await _createUseCase(category: category);

    result.when(
      success: (created) =>
          emit(CategoryState.createdCategory(category: created)),
      failure: _emitFailure,
    );
  }

  // ------------------------------------------------
  // UPDATE
  // ------------------------------------------------

  Future<void> updateCategoryById({
    required int id,
    required CategoryEntity category,
  }) async {
    emit(const CategoryState.updatingCategory());

    final result = await _updateByIdUseCase(id: id, category: category);

    result.when(
      success: (updated) =>
          emit(CategoryState.updatedSingleCategory(category: updated)),
      failure: _emitFailure,
    );
  }

  Future<void> updateCategoryByFilter({
    required CategoryEntity category,
    required CategoryQueryFilter filter,
  }) async {
    emit(const CategoryState.updatingCategory());

    final result = await _updateByFilterUseCase(
      category: category,
      categoryItemFilter: filter,
    );

    result.when(
      success: (updatedList) =>
          emit(CategoryState.updatedListCategory(categories: updatedList)),
      failure: _emitFailure,
    );
  }

  // ------------------------------------------------
  // DELETE
  // ------------------------------------------------

  Future<void> deleteCategoryById({required int id}) async {
    emit(const CategoryState.deletingCategory());

    final result = await _deleteByIdUseCase(id: id);

    result.when(
      success: (deletedId) =>
          emit(CategoryState.deletedSingleCategory(id: deletedId)),
      failure: _emitFailure,
    );
  }

  Future<void> deleteCategoryByFilter({
    required CategoryQueryFilter filter,
  }) async {
    emit(const CategoryState.deletingCategory());

    final result = await _deleteByFilterUseCase(categoryItemFilter: filter);

    result.when(
      success: (ids) => emit(CategoryState.deletedListCategory(ids: ids)),
      failure: _emitFailure,
    );
  }

  // ------------------------------------------------
  // COUNT
  // ------------------------------------------------

  Future<void> countCategories({
    required CategoryQueryFilter filter,
  }) async {
    emit(const CategoryState.countingCategory());

    final result = await _countUseCase(filter: filter);

    result.when(
      success: (count) => emit(CategoryState.countedCategory(count: count)),
      failure: _emitFailure,
    );
  }

  // ------------------------------------------------
  // IMAGE
  // ------------------------------------------------

  Future<void> uploadCategoryImage({
    required File image,
    required int id,
  }) async {
    emit(const CategoryState.uploadingImageCategory());

    final result = await _uploadImageUseCase(
      image: image,
      id: id,
    );

    result.when(
      success: (url) => emit(CategoryState.uploadedImageCategory(url: url)),
      failure: _emitFailure,
    );
  }
}
