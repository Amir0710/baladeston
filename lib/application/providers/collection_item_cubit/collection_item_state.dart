  import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
  import 'package:freezed_annotation/freezed_annotation.dart';
  import 'package:baladeston/domain/collection/entity/collection_item_entity/collection_item_entity.dart';
  import 'package:baladeston/application/providers/collection_cubit/collection_state.dart';

  part 'collection_item_state.freezed.dart';

  @freezed
  class CollectionItemState with _$CollectionItemState {
    const factory CollectionItemState.initial() = _Initial;

    // ------------------------------------------------
    // FETCH
    // ------------------------------------------------

    const factory CollectionItemState.fetchingItem() = _FetchingItem;

    const factory CollectionItemState.fetchingItems() = _FetchingItems;

    // ------------------------------------------------
    // CREATE
    // ------------------------------------------------

    const factory CollectionItemState.creatingItem() = _CreatingItem;

    // ------------------------------------------------
    // UPDATE
    // ------------------------------------------------

    const factory CollectionItemState.updatingItem() = _UpdatingItem;

    // ------------------------------------------------
    // DELETE
    // ------------------------------------------------

    const factory CollectionItemState.deletingItem() = _DeletingItem;

    // ------------------------------------------------
    // SUCCESS
    // ------------------------------------------------

    const factory CollectionItemState.successSingleLoaded({
      required CollectionItemEntity item,
    }) = _SuccessSingleLoaded;

    const factory CollectionItemState.successListLoaded({
      required List<CollectionItemEntity> items,
    }) = _SuccessListLoaded;

    const factory CollectionItemState.createdItem({
      required CollectionItemEntity item,
    }) = _CreatedItem;

    const factory CollectionItemState.updatedSingleItem({
      required CollectionItemEntity item,
    }) = _UpdatedSingleItem;

    const factory CollectionItemState.updatedListItem({
      required int updatedItem,
    }) = _UpdatedListItem;

    const factory CollectionItemState.deletedSingleItem({
      required int id,
    }) = _DeletedSingleItem;

    const factory CollectionItemState.deletedListItem({
      required int deletedItem,
    }) = _DeletedListItem;

    // ------------------------------------------------
    // ERROR
    // ------------------------------------------------

    const factory CollectionItemState.error({
      required CollectionStateError error,
      required CollectionFailure failure,
    }) = _Error;
  }
