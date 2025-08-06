import 'package:baladeston/data/datasources/remote/collection_remote_datasource/collection_api.dart';
import 'package:baladeston/domain/entitys/collection/collection_entity.dart';
import 'package:baladeston/domain/filters/collection_query_filter.dart';

class CollectionApiImplementation implements CollectionApi{
  @override
  Future<int> countAllCollections({required CollectionQueryFilter filter}) {
    // TODO: implement countAllCollections
    throw UnimplementedError();
  }

  @override
  Future<CollectionEntity> createCollection({required CollectionEntity collection}) {
    // TODO: implement createCollection
    throw UnimplementedError();
  }

  @override
  Future<void> deleteCollection({required int id}) {
    // TODO: implement deleteCollection
    throw UnimplementedError();
  }

  @override
  Future<List<CollectionEntity>> getCollections({required CollectionQueryFilter filter}) {
    // TODO: implement getCollections
    throw UnimplementedError();
  }

  @override
  Future<CollectionEntity> updateCollection({required CollectionEntity collection}) {
    // TODO: implement updateCollection
    throw UnimplementedError();
  }
} 