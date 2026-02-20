import 'dart:io';

import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/collection/datasource/remote/collection_remote_datasource/collection_api.dart';
import 'package:baladeston/data/collection/filter/collection_query_filter.dart';
import 'package:baladeston/data/collection/mapper/collection_mapper.dart';
import 'package:baladeston/domain/collection/entity/collection_entity.dart';
import 'package:baladeston/domain/collection/failure/collection_failure.dart';
import 'package:baladeston/domain/collection/failure/collection_failure_mapper.dart';
import 'package:baladeston/domain/collection/repository/collection_repository.dart';

class CollectionRepositoryImplementation extends CollectionRepository {
  final CollectionApi _api;

  CollectionRepositoryImplementation({
    required CollectionApi api,
  }) : _api = api;

  // --------------------------------------------------
  // Read
  // --------------------------------------------------

  @override
  Future<Result<List<CollectionEntity>, CollectionFailure>>
  getCollectionByFilter({
    required CollectionQueryFilter filter,
  }) async {
    try {
      final models = await _api.getCollectionByFilter(filter: filter);
      return Result.success(models.map((e) => e.toEntity()).toList());
    } catch (error) {
      return Result.failure(mapCollectionException(error));
    }
  }

  @override
  Future<Result<CollectionEntity, CollectionFailure>> getCollectionById({
    required int id,
  }) async {
    try {
      final model = await _api.getCollectionById(id: id);
      return Result.success(model.toEntity());
    } catch (error) {
      return Result.failure(mapCollectionException(error));
    }
  }

  // --------------------------------------------------
  // Create
  // --------------------------------------------------

  @override
  Future<Result<CollectionEntity, CollectionFailure>> createCollection({
    required CollectionEntity collection,
  }) async {
    try {
      final model = collection.toModel();
      final resultModel = await _api.createCollection(collection: model);
      return Result.success(resultModel.toEntity());
    } catch (error) {
      return Result.failure(mapCollectionException(error));
    }
  }

  // --------------------------------------------------
  // Update
  // --------------------------------------------------

  @override
  Future<Result<List<CollectionEntity>, CollectionFailure>>
  updateCollectionByFilter({
    required CollectionEntity collection,
    required CollectionQueryFilter filter,
  }) async {
    try {
      final model = collection.toModel();
      final models = await _api.updateCollectionByFilter(
        collection: model,
        filter: filter,
      );
      return Result.success(models.map((e) => e.toEntity()).toList());
    } catch (error) {
      return Result.failure(mapCollectionException(error));
    }
  }

  @override
  Future<Result<CollectionEntity, CollectionFailure>> updateCollectionById({
    required CollectionEntity collection,
    required int id,
  }) async {
    try {
      final model = collection.toModel();
      final updatedModel =
      await _api.updateCollectionById(collection: model, id: id);
      return Result.success(updatedModel.toEntity());
    } catch (error) {
      return Result.failure(mapCollectionException(error));
    }
  }

  // --------------------------------------------------
  // Delete
  // --------------------------------------------------

  @override
  Future<Result<List<int>, CollectionFailure>> deleteCollectionByFilter({
    required CollectionQueryFilter filter,
  }) async {
    try {
      final ids = await _api.deleteCollectionByFilter(filter: filter);
      return Result.success(ids);
    } catch (error) {
      return Result.failure(mapCollectionException(error));
    }
  }

  @override
  Future<Result<int, CollectionFailure>> deleteCollectionById({
    required int id,
  }) async {
    try {
      final deletedId = await _api.deleteCollectionById(id: id);
      return Result.success(deletedId);
    } catch (error) {
      return Result.failure(mapCollectionException(error));
    }
  }

  // --------------------------------------------------
  // Count
  // --------------------------------------------------

  @override
  Future<Result<int, CollectionFailure>> countAllCollection({
    required CollectionQueryFilter filter,
  }) async {
    try {
      final count = await _api.countAllCollection(filter: filter);
      return Result.success(count);
    } catch (error) {
      return Result.failure(mapCollectionException(error));
    }
  }

  // --------------------------------------------------
  // Image
  // --------------------------------------------------


  @override
  Future<Result<String, CollectionFailure>> uploadCollectionImage({
    required File image,
    required int id,
  }) async {
    try {
      final result =
      await _api.addCollectionImage(image: image, id: id);
      return Result.success(result);
    } catch (error) {
      return Result.failure(mapCollectionException(error));
    }
  }
}
