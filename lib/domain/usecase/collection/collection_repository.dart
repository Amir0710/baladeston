import 'package:baladeston/domain/entitys/collection/collection_entity.dart';
import 'package:baladeston/domain/filters/collection_query_filter.dart';

abstract class CollectionRepository {
  Future<List<CollectionEntity>> getCollectionByFilter(
      {required CollectionQueryFilter filter});

  Future<CollectionEntity> getCollectionById({required int id});

  Future<CollectionEntity> createCollection(
      {required CollectionEntity collection});

  Future<CollectionEntity> updateCollection(
      {required CollectionEntity collection});

  Future<void> deleteCollectionByFilter(
      {required CollectionQueryFilter filter});
  Future<void> deleteCollectionById(
      {required int id});

  Future<int> countAllCollection({required CollectionQueryFilter filter});
}
