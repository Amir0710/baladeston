import 'dart:io';

import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/collection/filter/item/collection_item_query_filter.dart';
import 'package:baladeston/data/collection/filter/model/collection_query_filter.dart';
import 'package:baladeston/data/video/filter/video_query_filter.dart';
import 'package:baladeston/domain/collection/entity/collection_entity/collection_entity.dart';
import 'package:baladeston/domain/collection/entity/collection_item_entity/collection_item_entity.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/video/entity/video_entity.dart';

abstract class CollectionRepository {
  Future<Result<List<CollectionEntity>, CollectionFailure>>
      getCollectionByFilter({
    required CollectionQueryFilter collectionItemFilter,
  });

  Future<Result<CollectionEntity, CollectionFailure>> getCollectionById({
    required int id,
  });

  Future<Result<CollectionEntity, CollectionFailure>> createCollection({
    required CollectionEntity collection,
  });

  Future<Result<int, CollectionFailure>>
      updateCollectionByFilter({
    required CollectionEntity collection,
    required CollectionQueryFilter filter,
  });

  Future<Result<CollectionEntity, CollectionFailure>> updateCollectionById({
    required CollectionEntity collection,
    required int id,
  });

  Future<Result<List<int>, CollectionFailure>> deleteCollectionByFilter({
    required CollectionQueryFilter filter,
  });

  Future<Result<int, CollectionFailure>> deleteCollectionById({
    required int id,
  });

  Future<Result<int, CollectionFailure>> countAllCollection({
    required CollectionQueryFilter filter,
  });

  Future<Result<String, CollectionFailure>> uploadCollectionImage({
    required File image,
  });
}
