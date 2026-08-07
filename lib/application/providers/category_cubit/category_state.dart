import 'package:baladeston/domain/category/entity/categoty_entity/category_entity.dart';
import 'package:baladeston/domain/category/failure/domain/validation/category_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_state.freezed.dart';

enum CategoryStateError {
  network,
  timeout,
  server,
  permission,
  notFound,
  validation,
  unknown,
}

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = _Initial;

  const factory CategoryState.loading() = _Loading;

  // SUCCESS
  const factory CategoryState.successListLoaded({
    required List<CategoryEntity> categories,
    required int count,
  }) = _SuccessListLoaded;

  const factory CategoryState.successSingleLoaded({
    required CategoryEntity category,
  }) = _SuccessSingleLoaded;

  // ERROR
  const factory CategoryState.error({
    required CategoryStateError error,
    required CategoryFailure failure,
  }) = _Error;

  // LOAD
  const factory CategoryState.fetchingCategory() = _FetchingCategory;

  const factory CategoryState.fetchingAllCategory() = _FetchingAllCategory;

  // CREATE
  const factory CategoryState.creatingCategory() = _CreatingCategory;

  const factory CategoryState.createdCategory({
    required CategoryEntity category,
  }) = _CreatedCategory;

  // UPDATE
  const factory CategoryState.updatingCategory() = _UpdatingCategory;

  // update by id
  const factory CategoryState.updatedSingleCategory({
    required CategoryEntity category,
  }) = _UpdatedSingleCategory;

  // update by filter
  const factory CategoryState.updatedListCategory({
    required List<CategoryEntity> categories,
  }) = _UpdatedListCategory;

  // DELETE
  const factory CategoryState.deletingCategory() = _DeletingCategory;

  // delete by id
  const factory CategoryState.deletedSingleCategory({
    required int id,
  }) = _DeletedSingleCategory;

  // delete by filter
  const factory CategoryState.deletedListCategory({
    required List<int> ids,
  }) = _DeletedListCategory;

  // COUNT
  const factory CategoryState.countingCategory() = _CountingCategory;

  const factory CategoryState.countedCategory({
    required int count,
  }) = _CountedCategory;

  // UPLOAD IMAGE
  const factory CategoryState.uploadingImageCategory() =
  _UploadingImageCategory;

  // uploaded image
  const factory CategoryState.uploadedImageCategory({
    required String url,
  }) = _UploadedImageCategory;
}
