import 'dart:io';

import 'package:baladeston/domain/collection/usecase/add_collection_image/add_collection_image_usecase.dart';
import 'package:bloc/bloc.dart';

import 'package:baladeston/application/providers/collection_cubit/collection_state.dart';
import 'package:baladeston/core/result/result.dart';

import 'package:baladeston/data/collection/filter/collection_query_filter.dart';
import 'package:baladeston/domain/collection/entity/collection_entity.dart';

// UseCases
import 'package:baladeston/domain/collection/usecase/create_collection/create_collection_usecase.dart';
import 'package:baladeston/domain/collection/usecase/update_collection_by_id/update_collection_by_id_usecase.dart';
import 'package:baladeston/domain/collection/usecase/update_collection_by_filter/update_collection_by_filter_usecase.dart';
import 'package:baladeston/domain/collection/usecase/delete_collection_by_id/delete_collection_by_id_usecase.dart';
import 'package:baladeston/domain/collection/usecase/delete_collection_by_filter/delete_collection_by_filter_usecase.dart';
import 'package:baladeston/domain/collection/usecase/get_collection_by_filter/get_collection_by_filter_usecase.dart';
import 'package:baladeston/domain/collection/usecase/get_collection_by_id/get_collection_by_id_usecase.dart';
import 'package:baladeston/domain/collection/usecase/count_all/count_all_collection_usecase.dart';

class CollectionCubit extends Cubit<CollectionState> {
  final CreateCollectionUseCase _createCollectionUseCase;
  final UpdateCollectionByIdUseCase _updateByIdUseCase;
  final UpdateCollectionByFilterUseCase _updateByFilterUseCase;
  final DeleteCollectionByIdUseCase _deleteByIdUseCase;
  final DeleteCollectionByFilterUseCase _deleteByFilterUseCase;
  final GetCollectionByIdUseCase _getByIdUseCase;
  final GetCollectionByFilterUseCase _getByFilterUseCase;
  final CountAllCollectionUseCase _countAllUseCase;
  final UploadCollectionImageUseCase _uploadImageUseCase;

  CollectionCubit({
    required CreateCollectionUseCase createUseCase,
    required UpdateCollectionByIdUseCase updateByIdUseCase,
    required UpdateCollectionByFilterUseCase updateByFilterUseCase,
    required DeleteCollectionByIdUseCase deleteByIdUseCase,
    required DeleteCollectionByFilterUseCase deleteByFilterUseCase,
    required GetCollectionByIdUseCase getByIdUseCase,
    required GetCollectionByFilterUseCase getByFilterUseCase,
    required CountAllCollectionUseCase countAllUseCase,
    required UploadCollectionImageUseCase uploadImageUseCase,
  })
      : _createCollectionUseCase = createUseCase,
        _updateByIdUseCase = updateByIdUseCase,
        _updateByFilterUseCase = updateByFilterUseCase,
        _deleteByIdUseCase = deleteByIdUseCase,
        _deleteByFilterUseCase = deleteByFilterUseCase,
        _getByIdUseCase = getByIdUseCase,
        _getByFilterUseCase = getByFilterUseCase,
        _countAllUseCase = countAllUseCase,
        _uploadImageUseCase = uploadImageUseCase,
        super(const CollectionState.initial());

  // READ

  Future<void> getCollectionsByFilter({
    required CollectionQueryFilter filter,
  }) async {
    emit(const CollectionState.fetchingAllCollection());

    final listResult = await _getByFilterUseCase(filter: filter);
    final countResult = await _countAllUseCase(filter: filter);

    listResult.when(
      success: (collections) {
        countResult.when(
          success: (count) {
            emit(
              CollectionState.successListLoaded(
                collections: collections,
                count: count,
              ),
            );
          },
          failure: (failure) {
            emit(
              CollectionState.error(
                error: CollectionStateError.errorWhileGettingAllCollection,
                errorMessage: failure.message,
              ),
            );
          },
        );
      },
      failure: (failure) {
        emit(
          CollectionState.error(
            error: CollectionStateError.errorWhileGettingAllCollection,
            errorMessage: failure.message,
          ),
        );
      },
    );
  }


  Future<void> getCollectionById({required int id}) async {
    emit(const CollectionState.fetchingCollection());

    final result = await _getByIdUseCase(id: id);

    result.when(
      success: (collection) =>
          emit(
            CollectionState.successSingleLoaded(collection: collection),
          ),
      failure: (failure) =>
          emit(
            CollectionState.error(
              error: CollectionStateError.collectionNotFound,
              errorMessage: failure.message,
            ),
          ),
    );
  }

  // CREATE

  Future<void> createCollection({
    required CollectionEntity collection,
  }) async {
    emit(const CollectionState.creatingCollection());

    final result =
    await _createCollectionUseCase(collection: collection);

    result.when(
      success: (created) =>
          emit(
            CollectionState.createdCollection(collection: created),
          ),
      failure: (failure) =>
          emit(
            CollectionState.error(
              error: CollectionStateError.errorWhileCreatingCollection,
              errorMessage: failure.message,
            ),
          ),
    );
  }

  // UPDATE

  Future<void> updateCollectionById({
    required int id,
    required CollectionEntity collection,
  }) async {
    emit(const CollectionState.updatingCollection());

    final result =
    await _updateByIdUseCase(id: id, collection: collection);

    result.when(
      success: (updated) =>
          emit(
            CollectionState.updatedSingleCollection(collection: updated),
          ),
      failure: (failure) =>
          emit(
            CollectionState.error(
              error: CollectionStateError.errorWhileUpdatingCollection,
              errorMessage: failure.message,
            ),
          ),
    );
  }

  Future<void> updateCollectionByFilter({
    required CollectionEntity collection,
    required CollectionQueryFilter filter,
  }) async {
    emit(const CollectionState.updatingCollection());

    final result = await _updateByFilterUseCase(
      collection: collection,
      filter: filter,
    );

    result.when(
      success: (updatedList) =>
          emit(
            CollectionState.updatedListCollection(collections: updatedList),
          ),
      failure: (failure) =>
          emit(
            CollectionState.error(
              error: CollectionStateError.errorWhileUpdatingCollection,
              errorMessage: failure.message,
            ),
          ),
    );
  }

  // DELETE

  Future<void> deleteCollectionById({required int id}) async {
    emit(const CollectionState.deletingCollection());

    final result = await _deleteByIdUseCase(id: id);

    result.when(
      success: (deletedId) =>
          emit(
            CollectionState.deletedSingleCollection(id: deletedId),
          ),
      failure: (failure) =>
          emit(
            CollectionState.error(
              error: CollectionStateError.errorWhileDeletingCollection,
              errorMessage: failure.message,
            ),
          ),
    );
  }

  Future<void> deleteCollectionByFilter({
    required CollectionQueryFilter filter,
  }) async {
    emit(const CollectionState.deletingCollection());

    final result = await _deleteByFilterUseCase(filter: filter);

    result.when(
      success: (ids) =>
          emit(
            CollectionState.deletedListCollection(ids: ids),
          ),
      failure: (failure) =>
          emit(
            CollectionState.error(
              error: CollectionStateError.errorWhileDeletingCollection,
              errorMessage: failure.message,
            ),
          ),
    );
  }

  //,


  Future<void> countCollections({
    required CollectionQueryFilter filter,
  }) async {
    emit(const CollectionState.countingCollection());

    final result = await _countAllUseCase(filter: filter);

    result.when(
      success: (count) =>
          emit(
            CollectionState.countedCollection(count: count),
          ),
      failure: (failure) =>
          emit(
            CollectionState.error(
              error: CollectionStateError.errorWhileCountingCollection,
              errorMessage: failure.message,
            ),
          ),
    );
  }

  // IMAGE

  Future<void> uploadCollectionImage({
    required File image,
    required int id,
  }) async {
    emit(const CollectionState.updatingCollection());

    final result =
    await _uploadImageUseCase(image: image, collectionId: id);

    result.when(
      success: (_) => emit(const CollectionState.imageUploaded()),
      failure: (failure) =>
          emit(
            CollectionState.error(
              error: CollectionStateError.errorWhileUpdatingCollection,
              errorMessage: failure.message,
            ),
          ),
    );
  }

}
