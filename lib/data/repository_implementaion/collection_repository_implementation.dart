import 'package:baladeston/data/datasources/remote/collection_remote_datasource/collection_api.dart';
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
      return await _api.createCollection(collection: collection);
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<void> deleteCollectionByFilter(
      {required CollectionQueryFilter filter}) async {
    try {
      return await _api.deleteCollectionByFilter(filter: filter);
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<List<CollectionEntity>> getCollectionByFilter(
      {required CollectionQueryFilter filter}) async {
    try {
      return await _api.getCollectionByFilter(filter: filter);
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<CollectionEntity> updateCollection(
      {required CollectionEntity collection}) async {
    try {
      return await _api.updateCollection(collection: collection);
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<CollectionEntity> getCollectionById({required int id}) async {
    try {
      return await _api.getCollectionById(id: id);
    } catch (e) {
      throw Exception('error $e');
    }
  }
  
  @override
  Future<void> deleteCollectionById({required int id}) {
       try {
      return _api.deleteCollectionById(id: id);
    } catch (e) {
      throw Exception('error $e');
    }
  }
}
