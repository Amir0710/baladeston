import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/core/variable/text_content_guard.dart';
import 'package:baladeston/data/collection/filter/item/collection_item_query_filter.dart';
import 'package:baladeston/data/video/filter/video_query_filter.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/failure/domain/validation/collection_item_filter_failure.dart';
import 'package:baladeston/domain/collection/failure/domain/validation/collection_items_with_video_failure.dart';
import 'package:baladeston/domain/video/failure/base_video_failure.dart';
import 'package:baladeston/domain/video/failure/domain/validation/video_filter_failure.dart';

class GetVideosByCollectionItemFilterUseCaseBusinessRule {
  final CollectionItemQueryFilter itemFilter;
  final VideoQueryFilter videoFilter;
  static const Limits _limits = Limits();

  const GetVideosByCollectionItemFilterUseCaseBusinessRule({
    required this.itemFilter,
    required this.videoFilter,
  });

  Result<void, CollectionFailure> validate() {
    final itemResult = _itemFilterValidation();
    final videoResult = _videoFilterValidation();

    CollectionItemFilterFailure? collectionFailure;
    VideoFailure? videoFailure;

    itemResult.when(
      success: (_) {},
      failure: (failure) {
        collectionFailure = failure;
      },
    );

    videoResult.when(
      success: (_) {},
      failure: (failure) {
        videoFailure = failure;
      },
    );

    if (collectionFailure != null || videoFailure != null) {
      return Result.failure(
        CollectionItemsWithVideoFailure(
          collectionFailure: collectionFailure,
          videoFailure: videoFailure,
        ),
      );
    }

    return const Result.success(null);
  }

  Result<void, CollectionItemFilterFailure> _itemFilterValidation() {
    final ids = itemFilter.ids;
    final videoId = itemFilter.videoId;
    final collectionId = itemFilter.collectionId;
    final searchTerm = itemFilter.searchTerm?.trim();
    final minPrice = itemFilter.minPrice;
    final maxPrice = itemFilter.maxPrice;
    final minRating = itemFilter.minRating;
    final adderId = itemFilter.adderId; // this filed don't have invalid

    // ids
    if (ids != null) {
      if (ids.isEmpty || ids.any((id) => id <= 0)) {
        return const Result.failure(CollectionItemFilterInvalidIdsFailure());
      }
    }

    // search term
    if (searchTerm != null && TextContentGuard.containsHtml(searchTerm)) {
      return const Result.failure(
          CollectionItemFilterContainsHtmlSearchTermFailure());
    }
    if (searchTerm != null && TextContentGuard.isEmojiOnly(searchTerm)) {
      return const Result.failure(
          CollectionItemFilterEmojiOnlySearchTermFailure());
    }
    if (searchTerm != null &&
        TextContentGuard.hasControlCharacters(searchTerm)) {
      return const Result.failure(
          CollectionItemFilterControlCharSearchTermFailure());
    }
    if (searchTerm != null &&
        searchTerm.length < _limits.minCollectionItemFilterSearchTermLength) {
      return const Result.failure(
          CollectionItemFilterSearchTermTooShortFailure());
    }
    if (searchTerm != null &&
        searchTerm.length > _limits.maxCollectionItemFilterSearchTermLength) {
      return const Result.failure(
          CollectionItemFilterSearchTermTooLongFailure());
    }

    // collection id
    if (collectionId != null && collectionId <= 0) {
      return const Result.failure(
          CollectionItemFilterInvalidCollectionIdFailure());
    }

    // video id
    if (videoId != null && videoId <= 0) {
      return const Result.failure(CollectionItemFilterInvalidVideoIdFailure());
    }

    // rating
    if (minRating != null) {
      if (minRating < _limits.minRate || minRating > _limits.maxRate) {
        return const Result.failure(
            CollectionItemFilterInvalidMinRatingFailure());
      }
    }

    // price

    if (minPrice != null &&
        (minPrice < _limits.minVideoPrice ||
            minPrice > _limits.maxVideoPrice)) {
      return const Result.failure(CollectionItemFilterMinPriceFailure());
    }
    if (maxPrice != null &&
        (maxPrice < _limits.minVideoPrice ||
            maxPrice > _limits.maxVideoPrice)) {
      return const Result.failure(CollectionItemFilterMaxPriceFailure());
    }

    if (maxPrice != null && minPrice != null && minPrice > maxPrice) {
      return const Result.failure(CollectionItemFilterPriceRangeFailure());
    }

    // empty filter
    final isEmpty = ids == null &&
        collectionId == null &&
        videoId == null &&
        adderId == null &&
        minPrice == null &&
        maxPrice == null &&
        (searchTerm == null || searchTerm.isEmpty) &&
        minRating == null;
    if (isEmpty) {
      return const Result.failure(CollectionItemFilterEmptyFailure());
    }

    return const Result.success(null);
  }

  Result<void, VideoFilterFailure> _videoFilterValidation() {
    final ids = videoFilter.ids;
    final searchTerm = videoFilter.searchTerm?.trim();
    final ownerId = videoFilter.ownerId;
    final uploaderId = videoFilter.uploaderId;
    final minRating = videoFilter.minRating;
    final minPrice = videoFilter.minPrice;
    final maxPrice = videoFilter.maxPrice;
    final uploadedAfter = videoFilter.uploadedAfter;
    final uploadedBefore = videoFilter.uploadedBefore;
    final minRecommendedAge = videoFilter.minRecommendedAge;
    final maxRecommendedAge = videoFilter.maxRecommendedAge;

    // ids
    if (ids != null) {
      if (ids.isEmpty || ids.any((id) => id <= 0)) {
        return const Result.failure(VideoFilterInvalidIdsFailure());
      }
    }

    // search term
    if (searchTerm != null) {
      if (TextContentGuard.containsHtml(searchTerm)) {
        return const Result.failure(VideoFilterContainsHtmlSearchTermFailure());
      }
      if (TextContentGuard.isEmojiOnly(searchTerm)) {
        return const Result.failure(VideoFilterEmojiOnlySearchTermFailure());
      }
      if (TextContentGuard.hasControlCharacters(searchTerm)) {
        return const Result.failure(VideoFilterControlCharSearchTermFailure());
      }
      if (searchTerm.length < _limits.minVideoFilterSearchTermLength) {
        return const Result.failure(VideoFilterSearchTermTooShortFailure());
      }
      if (searchTerm.length > _limits.maxVideoFilterSearchTermLength) {
        return const Result.failure(VideoFilterSearchTermTooLongFailure());
      }
    }

    // recommended age
    if (minRecommendedAge != null &&
        minRecommendedAge < _limits.minVideoRecommendedAge) {
      return const Result.failure(VideoFilterRecommendedAgeTooLowFailure());
    }
    if (maxRecommendedAge != null &&
        maxRecommendedAge > _limits.maxVideoRecommendedAge) {
      return const Result.failure(VideoFilterRecommendedAgeTooHighFailure());
    }

    // price
    if (minPrice != null && minPrice < 0) {
      return const Result.failure(VideoFilterPriceTooLowFailure());
    }
    if (maxPrice != null && maxPrice < 0) {
      return const Result.failure(VideoFilterPriceTooHighFailure());
    }
    if (minPrice != null && maxPrice != null && minPrice > maxPrice) {
      return const Result.failure(VideoFilterPriceRangeFailure());
    }

    // dates
    if (uploadedAfter != null && uploadedAfter.isAfter(DateTime.now())) {
      return const Result.failure(VideoFilterInvalidUploadedAfterFailure());
    }
    if (uploadedBefore != null && uploadedBefore.isAfter(DateTime.now())) {
      return const Result.failure(VideoFilterInvalidUploadedBeforeFailure());
    }
    if (uploadedAfter != null &&
        uploadedBefore != null &&
        uploadedAfter.isAfter(uploadedBefore)) {
      return const Result.failure(VideoFilterInvalidDateRangeFailure());
    }
    // empty check
    final isEmpty = ids == null &&
        (searchTerm == null || searchTerm.isEmpty) &&
        ownerId == null &&
        uploaderId == null &&
        minRating == null &&
        minPrice == null &&
        uploadedAfter == null &&
        uploadedBefore == null &&
        minRecommendedAge == null &&
        maxRecommendedAge == null &&
        videoFilter.status == null &&
        videoFilter.level == null;

    if (isEmpty) {
      return const Result.failure(VideoFilterEmptyFailure());
    }

    return const Result.success(null);
  }
}
