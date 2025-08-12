import 'package:baladeston/data/models/collection/collection_model.dart';
import 'package:baladeston/domain/filters/collection_query_filter.dart';

abstract class CollectionApi {
  Future<List<CollectionModel>> getCollectionByFilter(
      {required CollectionQueryFilter filter});

  Future<CollectionModel> getCollectionById({required int id});

  Future<CollectionModel> createCollection(
      {required CollectionModel collection});

  Future<CollectionModel> updateCollection(
      {required CollectionModel collection});

  Future<void> deleteCollectionByFilter(
      {required CollectionQueryFilter filter});

  Future<int> countAllCollection({required CollectionQueryFilter filter});
  Future<void> deleteCollectionById({required int id});
}
