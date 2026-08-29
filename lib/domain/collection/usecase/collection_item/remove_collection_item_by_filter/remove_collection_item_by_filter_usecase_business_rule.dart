import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/core/variable/text_content_guard.dart';
import 'package:baladeston/data/collection/filter/item/collection_item_query_filter.dart';
import 'package:baladeston/domain/collection/failure/domain/validation/collection_item_filter_failure.dart';

class RemoveCollectionItemByFilterUseCaseBusinessRule {
  final CollectionItemQueryFilter filter;
  static const Limits _limits = Limits();


  const RemoveCollectionItemByFilterUseCaseBusinessRule({
    required this.filter,
  });

  Result<void, CollectionItemFilterFailure> validate() {
    return _filterValidation();
  }

  Result<void, CollectionItemFilterFailure> _filterValidation() {
    final ids = filter.ids;
    final videoId = filter.videoId;
    final collectionId = filter.collectionId;
    final searchTerm = filter.searchTerm?.trim();
    final minPrice = filter.minPrice;
    final maxPrice = filter.maxPrice;
    final minRating = filter.minRating;
    final adderId = filter.adderId; // this filed don't have invalid

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
}
