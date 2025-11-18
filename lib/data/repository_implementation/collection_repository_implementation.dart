import 'package:baladeston/data/datasources/remote/collection_remote_datasource/collection_api.dart';
import 'package:baladeston/data/mapper/entity/collection_mapper.dart';
import 'package:baladeston/domain/entitys/collection/collection_entity.dart';
import 'package:baladeston/domain/filters/collection_query_filter.dart';
import 'package:baladeston/domain/repositories/collection_repository.dart';

class CollectionRepositoryImplementation extends CollectionRepository {
  final CollectionApi _api;

  CollectionRepositoryImplementation({
    required CollectionApi api,
  }) : _api = api;
  @override
  Future<int> countAllCollection(
      {required CollectionQueryFilter filter}) async {
    try {
      return await _api.countAllCollection(filter: filter);
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<CollectionEntity> createCollection(
      {required CollectionEntity collection}) async {
    try {
      final model = collection.toModel();
      final resultModel = await _api.createCollection(collection: model);
      return resultModel.toEntity();
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<void> deleteCollectionByFilter(
      {required CollectionQueryFilter filter}) async {
    try {
      await _api.deleteCollectionByFilter(filter: filter);
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<List<CollectionEntity>?> getCollectionByFilter(
      {required CollectionQueryFilter filter}) async {
    try {
      final resultModel = await _api.getCollectionByFilter(filter: filter);
      return resultModel?.map((m) => m.toEntity()).toList();
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<CollectionEntity> updateCollection(
      {required CollectionEntity collection}) async {
    try {
      final model = collection.toModel();
      final resultModel = await _api.updateCollection(collection: model);
      return resultModel.toEntity();
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<CollectionEntity?> getCollectionById({required int id}) async {
    try {
      final resulModel = await _api.getCollectionById(id: id);
      return resulModel?.toEntity();
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<void> deleteCollectionById({required int id}) async {
    try {
      await _api.deleteCollectionById(id: id);
    } catch (e) {
      throw Exception('error $e');
    }
  }
}
