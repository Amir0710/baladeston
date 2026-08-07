import 'dart:io';

import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/collection/datasource/remote/collection_remote_datasource/collection_api.dart';
import 'package:baladeston/data/collection/filter/model/collection_query_filter.dart';
import 'package:baladeston/data/collection/mapper/model/collection_mapper.dart';
import 'package:baladeston/domain/collection/entity/collection_entity/collection_entity.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/repository/collection/collection_repository.dart';

class CollectionRepositoryImplementation extends CollectionRepository {
  final CollectionApi _api;

  CollectionRepositoryImplementation({
    required CollectionApi api,
  }) : _api = api;

  @override
  Future<Result<List<CollectionEntity>, CollectionFailure>>
  getCollectionByFilter({
    required CollectionQueryFilter collectionItemFilter,
  }) async {
    final result =
    await _api.getCollectionByFilter(filter: collectionItemFilter);

    return result.map(
      success: (s) => Result.success(s.data.map((e) => e.toEntity()).toList()),
      failure: (f) => Result.failure(f.failure),
    );
  }

  @override
  Future<Result<CollectionEntity, CollectionFailure>> getCollectionById({
    required int id,
  }) async {
    final result = await _api.getCollectionById(id: id);

    return result.map(
      success: (s) => Result.success(s.data.toEntity()),
      failure: (f) => Result.failure(f.failure),
    );
  }

  @override
  Future<Result<CollectionEntity, CollectionFailure>> createCollection({
    required CollectionEntity collection,
  }) async {
    final model = collection.toModel();
    final result = await _api.createCollection(collection: model);

    return result.map(
      success: (s) => Result.success(s.data.toEntity()),
      failure: (f) => Result.failure(f.failure),
    );
  }

  @override
  Future<Result<int, CollectionFailure>> updateCollectionByFilter({
    required CollectionEntity collection,
    required CollectionQueryFilter filter,
  }) async {
    final model = collection.toModel();

    return _api.updateCollectionByFilter(
      collection: model,
      filter: filter,
    );
  }

  @override
  Future<Result<CollectionEntity, CollectionFailure>> updateCollectionById({
    required CollectionEntity collection,
    required int id,
  }) async {
    final model = collection.toModel();
    final result =
    await _api.updateCollectionById(collection: model, id: id);

    return result.map(
      success: (s) => Result.success(s.data.toEntity()),
      failure: (f) => Result.failure(f.failure),
    );
  }

  @override
  Future<Result<List<int>, CollectionFailure>> deleteCollectionByFilter({
    required CollectionQueryFilter filter,
  }) {
    return _api.deleteCollectionByFilter(filter: filter);
  }

  @override
  Future<Result<int, CollectionFailure>> deleteCollectionById({
    required int id,
  }) {
    return _api.deleteCollectionById(id: id);
  }

  @override
  Future<Result<int, CollectionFailure>> countAllCollection({
    required CollectionQueryFilter filter,
  }) {
    return _api.countAllCollection(filter: filter);
  }

  @override
  Future<Result<String, CollectionFailure>> uploadCollectionImage({
    required File image,
  }) {
    return _api.uploadCollectionImage(image: image);
  }
}
