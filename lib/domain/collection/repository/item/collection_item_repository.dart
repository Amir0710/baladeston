import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/collection/filter/item/collection_item_query_filter.dart';
import 'package:baladeston/data/video/filter/video_query_filter.dart';
import 'package:baladeston/domain/collection/entity/collection_item_entity/collection_item_entity.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/video/entity/video_entity.dart';

abstract class CollectionItemRepository {
  Future<Result<CollectionItemEntity, CollectionFailure>> addCollectionItem({
    required CollectionItemEntity item,
  });

  Future<Result<CollectionItemEntity, CollectionFailure>>
      updateCollectionItemById({
    required int id,
    required CollectionItemEntity item,
  });

  Future<Result<int, CollectionFailure>> updateCollectionItemByFilter({
    required CollectionItemQueryFilter filter,
    required CollectionItemEntity item,
  });

  Future<Result<int, CollectionFailure>> removeCollectionItemById({
    required int itemId,
  });

  Future<Result<int, CollectionFailure>> removeCollectionItemByFilter({
    required CollectionItemQueryFilter filter,
  });

  // get videos in tree view
  Future<Result<List<VideoEntity>, CollectionFailure>>
      getVideosByCollectionItemFilter({
    required CollectionItemQueryFilter collectionItemFilter,
    required VideoQueryFilter videoFilter,
  });

  // get relation in user dashboard
  Future<Result<List<CollectionItemEntity>, CollectionFailure>>
      getCollectionItemByCollectionFilter({
    required CollectionItemQueryFilter collectionItemFilter,
  });
}
