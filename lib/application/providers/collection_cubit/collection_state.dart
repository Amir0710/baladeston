import 'package:baladeston/domain/collection/entity/collection_entity/collection_entity.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection_state.freezed.dart';

enum CollectionStateError {
  network,
  timeout,
  server,
  permission,
  notFound,
  validation,
  unknown,
}

@freezed
class CollectionState with _$CollectionState {
  const factory CollectionState.initial() = _Initial;

  const factory CollectionState.loading() = _Loading;

  //SUCCESS
  const factory CollectionState.successListLoaded({
    required List<CollectionEntity> collections,
    required int count,
  }) = _SuccessListLoaded;

  const factory CollectionState.successSingleLoaded({
    required CollectionEntity collection,
  }) = _SuccessSingleLoaded;

  const factory CollectionState.error({
    required CollectionStateError error,
    required CollectionFailure failure,
  }) = _Error;

  //LOAD
  const factory CollectionState.fetchingCollection() = _FetchingCollection;

  const factory CollectionState.fetchingAllCollection() =
      _FetchingAllCollection;

  //CREATE
  const factory CollectionState.creatingCollection() = _CreatingCollection;

  const factory CollectionState.createdCollection({
    required CollectionEntity collection,
  }) = _CreatedCollection;

  //UPDATE
  const factory CollectionState.updatingCollection() = _UpdatingCollection;

  // update by id
  const factory CollectionState.updatedSingleCollection({
    required CollectionEntity collection,
  }) = _UpdatedSingleCollection;

  // update by filter
  const factory CollectionState.updatedListCollection({
    required int updatedCollection,
  }) = _UpdatedListCollection;

  //DELETE
  const factory CollectionState.deletingCollection() = _DeletingCollection;

  // delete by id
  const factory CollectionState.deletedSingleCollection({
    required int id,
  }) = _DeletedSingleCollection;

  // delete by filter
  const factory CollectionState.deletedListCollection({
    required List<int> ids,
  }) = _DeletedListCollection;

  //COUNT
  const factory CollectionState.countingCollection() = _CountingCollection;

  const factory CollectionState.countedCollection({
    required int count,
  }) = _CountedCollection;

  // UPLOAD IMAGE
  const factory CollectionState.uploadingImageCollection() =
      _UploadingImageCollection;

  // uploaded image
  const factory CollectionState.uploadedImageCollection({
    required String url,
  }) = _UploadedImageCollection;
}
