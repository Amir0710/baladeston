import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/collection/filter/item/collection_item_query_filter.dart';
import 'package:baladeston/data/video/filter/video_query_filter.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/failure/domain/validation/collection_item_filter_failure.dart';
import 'package:baladeston/domain/collection/failure/domain/validation/collection_items_with_video_failure.dart';
import 'package:baladeston/domain/video/failure/base_video_failure.dart';
import 'package:baladeston/domain/video/failure/domain/validation/video_filter_failure.dart';

class GetVideosByCollectionItemFilterUseCaseBusinessRule {
  final CollectionItemQueryFilter collectionItemFilter;
  final VideoQueryFilter videoFilter;

  const GetVideosByCollectionItemFilterUseCaseBusinessRule({
    required this.collectionItemFilter,
    required this.videoFilter,
  });

  Result<void, CollectionFailure> validate() {
    final collectionFailure = _itemValidate();
    final videoFailure = _videoFilterValidation();

    if (collectionFailure != null || videoFailure != null) {
      return Result.failure(CollectionItemsWithVideoFailure(
        collectionFailure: collectionFailure,
        videoFailure: videoFailure,
      ));
    }

    return const Result.success(null);
  }

  CollectionFailure? _itemValidate() {
    final limit = Limits();

    if (collectionItemFilter.collectionId! <= 0) {
      return const CollectionItemFilterInvalidCollectionIdFailure();
    }
    if (collectionItemFilter.limit <= limit.maxFilterLimitSize &&
        collectionItemFilter.limit >= limit.minFilterLimitSize) {
      return CollectionItemFilterInvalidLimitFailure();
    }
    return null;
  }

  VideoFailure? _videoFilterValidation() {
    final limit = Limits();

    if (videoFilter.limit < limit.minFilterLimitSize ||
        videoFilter.limit > limit.maxFilterLimitSize) {
      return const VideoFilterLimitInvalidFailure();
    }
    if (videoFilter.offset < 0) {
      return const VideoFilterOffsetInvalidFailure();
    }
    if (videoFilter.maxRating != null &&
        videoFilter.maxRating! > limit.maxFilterRate) {
      return const VideoFilterRatingInvalidFailure();
    }
    if (videoFilter.minRating != null &&
        videoFilter.minRating! < limit.minFilterRate) {
      return const VideoFilterRatingInvalidFailure();
    }
    if (videoFilter.ownerId != null && videoFilter.ownerId! < 0) {
      return const VideoFilterOwnerInvalidFailure();
    }

    final hasAnyFilter = videoFilter.ownerId != null ||
        (videoFilter.searchTerm != null &&
            videoFilter.searchTerm!.isNotEmpty) ||
        videoFilter.status != null ||
        videoFilter.minRating != null ||
        videoFilter.maxRating != null ||
        videoFilter.level != null ||
        videoFilter.minPrice != null ||
        videoFilter.maxPrice != null;

    if (!hasAnyFilter) {
      return const VideoFilterEmptyFailure();
    }

    return null;
  }
}
