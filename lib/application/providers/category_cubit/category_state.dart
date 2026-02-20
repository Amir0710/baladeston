import 'package:baladeston/domain/category/entity/category_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_state.freezed.dart';

enum CategoryStateError {
  noCategoryFound,
  categoryNotFound,
  errorWhileAddingCategory,
  errorWhileUpdatingCategory,
  errorWhileDeletingCategory,
  errorWhileGettingCategory,
  errorWhileGettingAllCategory,
  errorWhileAddingImage,
  errorWhileUpdatingImage,
  errorWhileCountCategory,

}

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = _Initial;

  const factory CategoryState.loading() = _Loading;

  const factory CategoryState.successListLoaded({
    required List<CategoryEntity> category,
    required int count,
  }) = _SuccessListLoaded;

  const factory CategoryState.successSingleLoaded({
    required CategoryEntity category,
  }) = _SuccessSingleLoaded;

  const factory CategoryState.failure({
    required String message,
  }) = _Failure;

  const factory CategoryState.error({
    required CategoryStateError error,
    required String? errorMessage,
  }) = _Error;


  //LOAD
  const factory CategoryState.fetchingCategory() = _FetchingCategory;
  const factory CategoryState.fetchingAllCategory() = _FetchingAllCategory;

  //CREATE CATEGORY
  const factory CategoryState.creatingCategory() = _CreatingCategory;
  const factory CategoryState.createdCategory({required CategoryEntity category}) = _CreatedCategory;

  //CREATE CATEGORY
  const factory CategoryState.updatingCategory() = _UpdatingCategory;
  const factory CategoryState.updatedSingleCategory({required CategoryEntity category}) = _UpdatedSingleCategory;
  const factory CategoryState.updatedListCategory({required CategoryEntity category}) = _UpdatedListCategory;

  //UPLOAD IMAGE
  const factory CategoryState.uploadingImageCategory() =
    _UploadingImageCategory;
  const factory CategoryState.uploadedImageCategory({required String path}) = _UploadedImageCategory;

  //UPDATE IMAGE
  const factory CategoryState.updateImageCategory() = _UpdateImageCategory;
  const factory CategoryState.updatedImageCategory({required String path}) = _UpdatedImageCategory;

  //DELETE
  const factory CategoryState.deletingCategory() = _DeletingCategory;
  const factory CategoryState.deletedSingleCategory({required int id}) = _DeletedSingleCategory;
  const factory CategoryState.deletedListCategory({required List<int> id}) = _DeletedListCategory;

  //COUNT
  const factory CategoryState.countingCategory() = _CountingCategory;
  const factory CategoryState.countedCategory({required int count}) = CountedCategory;


}
