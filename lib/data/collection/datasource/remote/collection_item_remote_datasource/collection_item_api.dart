import 'package:baladeston/core/model/paginated_response_model.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/collection/filter/item/collection_item_query_filter.dart';
import 'package:baladeston/data/collection/model/collection_item_model/collection_item_model.dart';
import 'package:baladeston/data/video/filter/video_query_filter.dart';
import 'package:baladeston/data/video/model/video_model.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';

import 'package:image_picker/image_picker.dart';

abstract class CollectionItemApi {
  // item repository

  Future<Result<CollectionItemModel, CollectionFailure>> addCollectionItem({
    required CollectionItemModel item,
  });

  Future<Result<CollectionItemModel, CollectionFailure>>
      updateCollectionItemById({
    required int id,
    required CollectionItemModel item,
  });

  Future<Result<int, CollectionFailure>> updateCollectionItemByFilter({
    required CollectionItemQueryFilter filter,
    required CollectionItemModel item,
  });

  Future<Result<int, CollectionFailure>> removeCollectionItemById({
    required int itemId,
  });

  Future<Result<int, CollectionFailure>> removeCollectionItemByFilter({
    required CollectionItemQueryFilter filter,
  });

  // get videos in tree view
  Future<Result<PaginatedResponseModel<VideoModel>, CollectionFailure>>
      getVideosByCollectionItemFilter({
    required CollectionItemQueryFilter collectionItemFilter,
    required VideoQueryFilter videoFilter,
  });

  // get relation in user dashboard
  Future<Result<PaginatedResponseModel<CollectionItemModel>, CollectionFailure>>
      getCollectionItemByCollectionFilter({
    required CollectionItemQueryFilter collectionItemFilter,
  });

  Future<Result<String, CollectionFailure>> uploadImage({
    required XFile image,
  });
}
