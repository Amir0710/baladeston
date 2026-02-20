import 'dart:io';

import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/collection/filter/collection_query_filter.dart';
import 'package:baladeston/domain/collection/entity/collection_entity.dart';
import 'package:baladeston/domain/collection/failure/collection_failure.dart';

abstract class CollectionRepository {

  Future<Result<List<CollectionEntity>, CollectionFailure>>
      getCollectionByFilter({
    required CollectionQueryFilter filter,
  });

  Future<Result<CollectionEntity, CollectionFailure>> getCollectionById({
    required int id,
  });


  Future<Result<CollectionEntity, CollectionFailure>> createCollection({
    required CollectionEntity collection,
  });


  Future<Result<List<CollectionEntity>, CollectionFailure>>
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
    required int id,
  });

}
