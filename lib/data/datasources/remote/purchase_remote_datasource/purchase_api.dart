import 'package:baladeston/data/models/collection/collection_model.dart';
import 'package:baladeston/domain/filters/collection_query_filter.dart';

abstract class CollectionRemoteDatasource {
  Future<List<CollectionModel>> fetchCollections(CollectionQueryFilter filter);
  Future<void> updateCollection(CollectionModel collection);
  Future<void> deleteCollection(int id);
  Future<void> createCollection(CollectionModel collection);
  Future<int> countAllCollection(CollectionQueryFilter filter);
}
