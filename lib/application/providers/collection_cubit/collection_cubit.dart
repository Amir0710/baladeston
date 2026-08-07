import 'dart:io';

import 'package:baladeston/application/providers/collection_cubit/collection_state.dart';
import 'package:baladeston/data/collection/filter/model/collection_query_filter.dart';
import 'package:baladeston/domain/collection/entity/collection_entity/collection_entity.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/usecase/collection/count_collection/count_collection_usecase.dart';
import 'package:baladeston/domain/collection/usecase/collection/create_collection/create_collection_usecase.dart';
import 'package:baladeston/domain/collection/usecase/collection/delete_collection_by_filter/delete_collection_by_filter_usecase.dart';
import 'package:baladeston/domain/collection/usecase/collection/delete_collection_by_id/delete_collection_by_id_usecase.dart';
import 'package:baladeston/domain/collection/usecase/collection/get_collection_by_filter/get_collection_by_filter_usecase.dart';
import 'package:baladeston/domain/collection/usecase/collection/get_collection_by_id/get_collection_by_id_usecase.dart';
import 'package:baladeston/domain/collection/usecase/collection/update_collection_by_filter/update_collection_by_filter_usecase.dart';
import 'package:baladeston/domain/collection/usecase/collection/update_collection_by_id/update_collection_by_id_usecase.dart';
import 'package:baladeston/domain/collection/usecase/collection/upload_collection_image/upload_collection_image_usecase.dart';
import 'package:baladeston/presentation/mapper/collection/collection_failure_mapper.dart';
import 'package:bloc/bloc.dart';

class CollectionCubit extends Cubit<CollectionState> {
  final CreateCollectionUseCase _createCollectionUseCase;
  final UpdateCollectionByIdUseCase _updateByIdUseCase;
  final UpdateCollectionByFilterUseCase _updateByFilterUseCase;
  final DeleteCollectionByIdUseCase _deleteByIdUseCase;
  final DeleteCollectionByFilterUseCase _deleteByFilterUseCase;
  final GetCollectionByIdUseCase _getByIdUseCase;
  final GetCollectionByFilterUseCase _getByFilterUseCase;
  final CountCollectionUseCase _countAllUseCase;
  final UploadCollectionImageUseCase _uploadImageUseCase;


  CollectionCubit({
    required CreateCollectionUseCase createUseCase,
    required UpdateCollectionByIdUseCase updateByIdUseCase,
    required UpdateCollectionByFilterUseCase updateByFilterUseCase,
    required DeleteCollectionByIdUseCase deleteByIdUseCase,
    required DeleteCollectionByFilterUseCase deleteByFilterUseCase,
    required GetCollectionByIdUseCase getByIdUseCase,
    required GetCollectionByFilterUseCase getByFilterUseCase,
    required CountCollectionUseCase countAllUseCase,
    required UploadCollectionImageUseCase uploadImageUseCase,
  })  : _createCollectionUseCase = createUseCase,
        _updateByIdUseCase = updateByIdUseCase,
        _updateByFilterUseCase = updateByFilterUseCase,
        _deleteByIdUseCase = deleteByIdUseCase,
        _deleteByFilterUseCase = deleteByFilterUseCase,
        _getByIdUseCase = getByIdUseCase,
        _getByFilterUseCase = getByFilterUseCase,
        _countAllUseCase = countAllUseCase,
        _uploadImageUseCase = uploadImageUseCase,
        super(const CollectionState.initial());

  // ------------------------------------------------
  // Internal Failure Handler
  // ------------------------------------------------


  void _emitFailure(CollectionFailure failure) {
    final activeFailure = failure;

    emit(
      CollectionState.error(
        error: mapCollectionFailureToStateError(activeFailure),
        failure: activeFailure,
      ),
    );
  }

  // ------------------------------------------------
  // READ
  // ------------------------------------------------

  Future<void> getCollectionsByFilter({
    required CollectionQueryFilter filter,
  }) async {
    emit(const CollectionState.fetchingAllCollection());

    final (listResult, countResult) = await (
      _getByFilterUseCase(filter: filter),
      _countAllUseCase(filter: filter),
    ).wait;

    listResult.map(
      success: (success) {
        countResult.map(
          success: (successCount) {
            emit(CollectionState.successListLoaded(
              collections: success.data,
              count: successCount.data,
            ));
          },
          failure: (f) => _emitFailure(f.failure),
        );
      },
      failure: (f) => _emitFailure(f.failure),
    );
  }

  Future<void> getCollectionById({required int id}) async {
    emit(const CollectionState.fetchingCollection());

    final result = await _getByIdUseCase(id: id);

    result.map(
      success: (res) =>
          emit(CollectionState.successSingleLoaded(collection: res.data)),
      failure: (f) => _emitFailure(f.failure),
    );
  }

  // ------------------------------------------------
  // CREATE
  // ------------------------------------------------

  Future<void> createCollection({required CollectionEntity collection}) async {
    emit(const CollectionState.creatingCollection());

    final result = await _createCollectionUseCase(collection: collection);

    result.map(
      success: (res) =>
          emit(CollectionState.createdCollection(collection: res.data)),
      failure: (f) => _emitFailure(f.failure),
    );
  }

  // ------------------------------------------------
  // UPDATE
  // ------------------------------------------------

  Future<void> updateCollectionById({
    required int id,
    required CollectionEntity collection,
  }) async {
    emit(const CollectionState.updatingCollection());

    final result = await _updateByIdUseCase(id: id, collection: collection);

    result.map(
      success: (res) =>
          emit(CollectionState.updatedSingleCollection(collection: res.data)),
      failure: (f) => _emitFailure(f.failure),
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

    result.map(
      success: (res) =>
          emit(CollectionState.updatedListCollection(updatedCollection: res.data)),
      failure: (f) => _emitFailure(f.failure),
    );
  }

  // ------------------------------------------------
  // DELETE
  // ------------------------------------------------

  Future<void> deleteCollectionById({required int id}) async {
    emit(const CollectionState.deletingCollection());

    final result = await _deleteByIdUseCase(id: id);

    result.map(
      success: (res) =>
          emit(CollectionState.deletedSingleCollection(id: res.data)),
      failure: (f) => _emitFailure(f.failure),
    );
  }

  Future<void> deleteCollectionByFilter(
      {required CollectionQueryFilter filter}) async {
    emit(const CollectionState.deletingCollection());

    final result = await _deleteByFilterUseCase(filter: filter);

    result.map(
      success: (res) =>
          emit(CollectionState.deletedListCollection(ids: res.data)),
      failure: (f) => _emitFailure(f.failure),
    );
  }

  // ------------------------------------------------
  // COUNT
  // ------------------------------------------------

  Future<void> countCollections({required CollectionQueryFilter filter}) async {
    emit(const CollectionState.countingCollection());

    final result = await _countAllUseCase(filter: filter);

    result.map(
      success: (res) =>
          emit(CollectionState.countedCollection(count: res.data)),
      failure: (f) => _emitFailure(f.failure),
    );
  }

  // ------------------------------------------------
  // IMAGE
  // ------------------------------------------------

  Future<void> uploadCollectionImage(
      {required File image, required int id}) async {
    emit(const CollectionState.uploadingImageCollection());

    final result = await _uploadImageUseCase(image: image);

    result.map(
      success: (res) =>
          emit(CollectionState.uploadedImageCollection(url: res.data)),
      failure: (f) => _emitFailure(f.failure),
    );
  }
}
