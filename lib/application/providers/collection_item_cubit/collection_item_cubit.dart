import 'package:baladeston/application/providers/collection_item_cubit/collection_item_state.dart';
import 'package:baladeston/data/collection/filter/item/collection_item_query_filter.dart';
import 'package:baladeston/domain/collection/entity/collection_item_entity/collection_item_entity.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/usecase/collection_item/add_collection_item_usecase/add_collection_item_usecase.dart';
import 'package:baladeston/domain/collection/usecase/collection_item/get_collection_item_by_filter/get_collection_item_by_filter_usecase.dart';
import 'package:baladeston/domain/collection/usecase/collection_item/remove_collection_item_by_filter/remove_collection_item_by_filter_useCase.dart';
import 'package:baladeston/domain/collection/usecase/collection_item/remove_collection_item_by_id/delete_collection_item_by_id_useCase.dart';
import 'package:baladeston/domain/collection/usecase/collection_item/update_collection_item_by_filter/update_collection_item_by_filter_usecase.dart';
import 'package:baladeston/domain/collection/usecase/collection_item/update_collection_item_by_id/update_collection_item_by_id_useCase.dart';
import 'package:baladeston/presentation/mapper/collection/collection_failure_mapper.dart';
import 'package:bloc/bloc.dart';

class CollectionItemCubit extends Cubit<CollectionItemState> {
  final AddCollectionItemUseCase _addItemUseCase;
  final UpdateCollectionItemByIdUseCase _updateByIdUseCase;
  final UpdateCollectionItemByFilterUseCase _updateByFilterUseCase;
  final RemoveCollectionItemByIdUseCase _removeByIdUseCase;
  final RemoveCollectionItemByFilterUseCase _removeByFilterUseCase;
  final GetCollectionItemByCollectionItemFilterUseCase _getByFilterUseCase;

  CollectionItemCubit({
    required AddCollectionItemUseCase addCollectionItemUseCase,
    required UpdateCollectionItemByIdUseCase updateCollectionItemByIdUseCase,
    required UpdateCollectionItemByFilterUseCase
        updateCollectionItemByFilterUseCase,
    required RemoveCollectionItemByIdUseCase removeCollectionItemByIdUseCase,
    required RemoveCollectionItemByFilterUseCase
        removeCollectionItemByFilterUseCase,
    required GetCollectionItemByCollectionItemFilterUseCase
        getCollectionItemByFilterUseCase,
  })  : _addItemUseCase = addCollectionItemUseCase,
        _updateByIdUseCase = updateCollectionItemByIdUseCase,
        _updateByFilterUseCase = updateCollectionItemByFilterUseCase,
        _removeByIdUseCase = removeCollectionItemByIdUseCase,
        _removeByFilterUseCase = removeCollectionItemByFilterUseCase,
        _getByFilterUseCase = getCollectionItemByFilterUseCase,
        super(const CollectionItemState.initial());

  // ------------------------------------------------
  // Internal Failure Handler
  // ------------------------------------------------

  void _emitFailure(CollectionFailure failure) {
    emit(
      CollectionItemState.error(
        error: mapCollectionFailureToStateError(failure),
        failure: failure,
      ),
    );
  }

  // ------------------------------------------------
  // READ
  // ------------------------------------------------

  Future<void> getCollectionItemByFilter({
    required CollectionItemQueryFilter collectionItemFilter,
  }) async {
    emit(const CollectionItemState.fetchingItems());

    final result = await _getByFilterUseCase(
      collectionItemFilter: collectionItemFilter,
    );

    result.when(
      success: (items) =>
          emit(CollectionItemState.successListLoaded(items: items)),
      failure: _emitFailure,
    );
  }

  // ------------------------------------------------
  // CREATE
  // ------------------------------------------------

  Future<void> addCollectionItem({
    required CollectionItemEntity item,
  }) async {
    emit(const CollectionItemState.creatingItem());

    final result = await _addItemUseCase(item: item);

    result.when(
      success: (created) =>
          emit(CollectionItemState.createdItem(item: created)),
      failure: _emitFailure,
    );
  }

  // ------------------------------------------------
  // UPDATE
  // ------------------------------------------------

  Future<void> updateCollectionItemById({
    required int id,
    required CollectionItemEntity item,
  }) async {
    emit(const CollectionItemState.updatingItem());

    final result = await _updateByIdUseCase(id: id, item: item);

    result.when(
      success: (updated) =>
          emit(CollectionItemState.updatedSingleItem(item: updated)),
      failure: _emitFailure,
    );
  }

  Future<void> updateCollectionItemByFilter({
    required CollectionItemEntity item,
    required CollectionItemQueryFilter filter,
  }) async {
    emit(const CollectionItemState.updatingItem());

    final result = await _updateByFilterUseCase(collectionItem: item, filter: filter);

    result.when(
      success: (result) =>
          emit(CollectionItemState.updatedListItem(updatedItem: result)),
      failure: _emitFailure,
    );
  }

  // ------------------------------------------------
  // DELETE
  // ------------------------------------------------

  Future<void> removeCollectionItemById({
    required int itemId,
  }) async {
    emit(const CollectionItemState.deletingItem());

    final result = await _removeByIdUseCase(itemId: itemId);

    result.when(
      success: (id) => emit(CollectionItemState.deletedSingleItem(id: id)),
      failure: _emitFailure,
    );
  }

  Future<void> removeCollectionItemByFilter({
    required CollectionItemQueryFilter filter,
  }) async {
    emit(const CollectionItemState.deletingItem());

    final result = await _removeByFilterUseCase(filter: filter);

    result.when(
      success: (deletedItem) =>
          emit(CollectionItemState.deletedListItem(deletedItem: deletedItem)),
      failure: _emitFailure,
    );
  }
}
