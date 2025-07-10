import '../entities/collection.dart';

abstract class CollectionRepository {
  Future<List<Collection>> getAllCollections({
    required int limit,
    required int offset,
  });

  Future<void> createCollection({required Collection collection});

  Future<void> updateCollection({required Collection collection});

  Future<void> deleteCollection({required int id});

  Future<List<Collection>> searchCollectionsByTitle({required String title,
    required int limit,
    required int offset,});
}
