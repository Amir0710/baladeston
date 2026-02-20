import 'dart:io';

import 'package:baladeston/data/collection/model/collection_model.dart';
import 'package:baladeston/data/collection/filter/collection_query_filter.dart';

abstract class CollectionApi {
  // --------------------------------------------------
  // Read
  // --------------------------------------------------

  Future<List<CollectionModel>> getCollectionByFilter({
    required CollectionQueryFilter filter,
  });

  Future<CollectionModel> getCollectionById({
    required int id,
  });

  // --------------------------------------------------
  // Create
  // --------------------------------------------------

  Future<CollectionModel> createCollection({
    required CollectionModel collection,
  });

  // --------------------------------------------------
  // Update
  // --------------------------------------------------

  Future<List<CollectionModel>> updateCollectionByFilter({
    required CollectionModel collection,
    required CollectionQueryFilter filter,
  });

  Future<CollectionModel> updateCollectionById({
    required CollectionModel collection,
    required int id,
  });

  // --------------------------------------------------
  // Delete
  // --------------------------------------------------

  Future<List<int>> deleteCollectionByFilter({
    required CollectionQueryFilter filter,
  });

  Future<int> deleteCollectionById({
    required int id,
  });

  // --------------------------------------------------
  // Count
  // --------------------------------------------------

  Future<int> countAllCollection({
    required CollectionQueryFilter filter,
  });

  // --------------------------------------------------
  // Image
  // --------------------------------------------------

  Future<String> addCollectionImage({
    required File image,
    required int id,
  });
}
