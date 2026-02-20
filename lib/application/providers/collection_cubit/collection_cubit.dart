import 'package:baladeston/domain/collection/usecase/update_category_by_filter/update_collection_by_filter_usecase.dart';
import 'package:baladeston/domain/collection/usecase/update_collection_by_id/update_collection_by_id_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:baladeston/application/providers/collection_cubit/collection_state.dart';
import 'package:baladeston/data/collection/filter/collection_query_filter.dart';
import 'package:baladeston/domain/collection/entity/collection_entity.dart';
import 'package:baladeston/domain/collection/usecase/count_all/count_all_collections_usecase.dart';
import 'package:baladeston/domain/collection/usecase/create_collection/create_collections_usecase.dart';
import 'package:baladeston/domain/collection/usecase/delete_collection_by_filter/delete_collection_by_filter_usecase.dart';
import 'package:baladeston/domain/collection/usecase/delete_collection_by_id/delete_collection_by_id_usecase.dart';
import 'package:baladeston/domain/collection/usecase/get_collection_by_filter/get_collection_by_filter_usecase.dart';
import 'package:baladeston/domain/collection/usecase/get_collection_by_id/get_collection_by_id_usecase.dart';

class CollectionCubit extends Cubit<CollectionState> {
  final CreateCollectionUseCase _createCollectionUseCase;
  final UpdateCollectionByIdUseCase _updateCollectionByIdUseCaseUseCase;
  final UpdateCollectionByFilterUseCase _updateCollectionByFilterUseCase;
  final CountAllCollectionUseCase _countAllCollectionUseCase;
  final DeleteCollectionByIdUseCase _deleteCollectionByIdUseCase;
  final DeleteCollectionByFilterUseCase _deleteCollectionByFilterUseCase;
  final GetCollectionByFilterUseCase _getCollectionByFilterUseCase;
  final GetCollectionByIdUseCase _getCollectionByIdUseCase;

  CollectionCubit({
    required CreateCollectionUseCase createUseCase,
    required UpdateCollectionByIdUseCase updateByIdUseCase,
    required UpdateCollectionByFilterUseCase updateByFilterUseCase,
    required CountAllCollectionUseCase countUseCase,
    required DeleteCollectionByIdUseCase deleteByIdUseCase,
    required DeleteCollectionByFilterUseCase deleteByFilterUseCase,
    required GetCollectionByFilterUseCase getByFilterUseCase,
    required GetCollectionByIdUseCase getByIdUseCase,
  })  : _createCollectionUseCase= createUseCase,
        _updateCollectionByIdUseCaseUseCase = updateByIdUseCase,
        _updateCollectionByFilterUseCase = updateByFilterUseCase,
        _countAllCollectionUseCase = countUseCase,
        _deleteCollectionByIdUseCase = deleteByIdUseCase,
        _deleteCollectionByFilterUseCase = deleteByFilterUseCase,
        _getCollectionByFilterUseCase = getByFilterUseCase,
        _getCollectionByIdUseCase = getByIdUseCase,
        super(const CollectionState.initial());

  // ---------------------------------------------------------------------------
  // READ
  // ---------------------------------------------------------------------------

  Future<void> getCollectionsByFilter({
    required CollectionQueryFilter filter,
  }) async {
    emit(const CollectionState.fetchingAllCollection());
    try {
      final collections = await _getCollectionByFilterUseCase(filter: filter);
      final count = await _countAllCollectionUseCase(filter: filter);

      emit(
        CollectionState.successListLoaded(
          collections: collections,
          count: count,
        ),
      );
    } catch (e) {
      emit(
        CollectionState.error(
          error: CollectionStateError.errorWhileGettingAllCollection,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> getCollectionById({required int id}) async {
    emit(const CollectionState.fetchingCollection());
    try {
      final collection = await _getCollectionByIdUseCase(id: id);

      emit(
        CollectionState.successSingleLoaded(
          collection: collection,
        ),
      );
    } catch (e) {
      emit(
        CollectionState.error(
          error: CollectionStateError.collectionNotFound,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  // ---------------------------------------------------------------------------
  // CREATE
  // ---------------------------------------------------------------------------

  Future<void> createCollection({
    required CollectionEntity collection,
  }) async {
    emit(const CollectionState.creatingCollection());
    try {
      final createdCollection =
      await _createCollectionUseCase( collection: collection);

      emit(
        CollectionState.createdCollection(
          collection: createdCollection,
        ),
      );
    } catch (e) {
      emit(
        CollectionState.error(
          error: CollectionStateError.errorWhileCreatingCollection,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  // ---------------------------------------------------------------------------
  // UPDATE
  // ---------------------------------------------------------------------------

  Future<void> updateCollectionById({
    required int id,
    required CollectionEntity collection,
  }) async {
    emit(const CollectionState.updatingCollection());
    try {
      final updatedCollection =
      await _updateCollectionByIdUseCaseUseCase(id: id, collection: collection);

      emit(
        CollectionState.updatedSingleCollection(
          collection: updatedCollection,
        ),
      );
    } catch (e) {
      emit(
        CollectionState.error(
          error: CollectionStateError.errorWhileUpdatingCollection,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> updateCollectionByFilter({
    required CollectionEntity collection,
    required CollectionQueryFilter filter,
  }) async {
    emit(const CollectionState.updatingCollection());
    try {
      final updatedCollections =
      await _updateCollectionByFilterUseCase(
        collection: collection,
        filter: filter,
      );

      emit(
        CollectionState.updatedListCollection(
          collections: updatedCollections,
        ),
      );
    } catch (e) {
      emit(
        CollectionState.error(
          error: CollectionStateError.errorWhileUpdatingCollection,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  // ---------------------------------------------------------------------------
  // DELETE
  // ---------------------------------------------------------------------------

  Future<void> deleteCollectionById({required int id}) async {
    emit(const CollectionState.deletingCollection());
    try {
      final deletedId = await _deleteCollectionByIdUseCase(id: id);

      emit(
        CollectionState.deletedSingleCollection(
          id: deletedId,
        ),
      );
    } catch (e) {
      emit(
        CollectionState.error(
          error: CollectionStateError.errorWhileDeletingCollection,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> deleteCollectionByFilter({
    required CollectionQueryFilter filter,
  }) async {
    emit(const CollectionState.deletingCollection());
    try {
      final deletedIds =
      await _deleteCollectionByFilterUseCase(filter: filter);

      emit(
        CollectionState.deletedListCollection(
          ids: deletedIds,
        ),
      );
    } catch (e) {
      emit(
        CollectionState.error(
          error: CollectionStateError.errorWhileDeletingCollection,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  // ---------------------------------------------------------------------------
  // COUNT
  // ---------------------------------------------------------------------------

  Future<void> countCollections({
    required CollectionQueryFilter filter,
  }) async {
    emit(const CollectionState.countingCollection());
    try {
      final count = await _countAllCollectionUseCase(filter: filter);

      emit(
        CollectionState.countedCollection(
          count: count,
        ),
      );
    } catch (e) {
      emit(
        CollectionState.error(
          error: CollectionStateError.errorWhileCountingCollection,
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
