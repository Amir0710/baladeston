import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/core/variable/text_content_guard.dart';
import 'package:baladeston/data/collection/filter/model/collection_query_filter.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/failure/domain/validation/collection_filter_failure.dart';

class DeleteCollectionByFilterUsecaseBusinessRule {
  final CollectionQueryFilter filter;
  static const Limits _limits = Limits();
  const DeleteCollectionByFilterUsecaseBusinessRule({
    required this.filter,
  });

  Result<void, CollectionFailure> validate() {
    return _filterValidation();
  }

  Result<void, CollectionFilterFailure> _filterValidation() {
    final ids = filter.ids;
    final minCount = filter.minCount;
    final maxCount = filter.maxCount;
    final minPrice = filter.minPrice;
    final maxPrice = filter.maxPrice;
    final searchTerm = filter.searchTerm?.trim();
    final ownerId = filter.ownerId;
    final type = filter.type ;
    final minRating = filter.minRating;


    // ids
    if (ids != null) {
      if (ids.isEmpty || ids.any((id) => id <= 0)) {
        return const Result.failure(CollectionFilterInvalidIdsFailure());
      }
    }

    // search term
    if (searchTerm != null && TextContentGuard.containsHtml(searchTerm)) {
      return const Result.failure(
          CollectionFilterContainsHtmlSearchTermFailure());
    }
    if (searchTerm != null && TextContentGuard.isEmojiOnly(searchTerm)) {
      return const Result.failure(CollectionFilterEmojiOnlySearchTermFailure());
    }
    if (searchTerm != null && TextContentGuard.hasControlCharacters(searchTerm)) {
      return const Result.failure(
          CollectionFilterControlCharSearchTermFailure());
    }
    if (searchTerm != null &&
        searchTerm.length < _limits.minCollectionFilterSearchTermLength) {
      return const Result.failure(CollectionFilterSearchTermTooShortFailure());
    }
    if (searchTerm != null &&
        searchTerm.length > _limits.maxCollectionFilterSearchTermLength) {
      return const Result.failure(CollectionFilterSearchTermTooLongFailure());
    }

    // count bounds
    if (minCount != null && minCount < _limits.minCollectionCount) {
      return const Result.failure(CollectionFilterMinCountFailure());
    }

    if (maxCount != null && maxCount > _limits.maxCollectionCount) {
      return const Result.failure(CollectionFilterMaxCountFailure());
    }

    if (minCount != null && maxCount != null && minCount > maxCount) {
      return const Result.failure(CollectionFilterCountRangeFailure());
    }

    // price bounds
    if (minPrice != null && minPrice < 0) {
      return const Result.failure(CollectionFilterMinPriceFailure());
    }

    if (maxPrice != null && maxPrice < 0) {
      return const Result.failure(CollectionFilterMaxPriceFailure());
    }

    if (minPrice != null && maxPrice != null && minPrice > maxPrice) {
      return const Result.failure(CollectionFilterPriceRangeFailure());
    }

    // rating
    if (minRating != null) {
      if (minRating < _limits.minRate || minRating > _limits.maxRate) {
        return const Result.failure(CollectionFilterInvalidMinRatingFailure());
      }
    }

    // empty filter
    final isEmpty = ids == null &&
        (searchTerm == null || searchTerm.isEmpty) &&
        ownerId == null &&
        minCount == null &&
        maxCount == null &&
        minPrice == null &&
        maxPrice == null &&
        minRating == null &&
        type == null &&
        filter.status == null;

    if (isEmpty) {
      return const Result.failure(CollectionFilterEmptyFailure());
    }

    return const Result.success(null);
  }
}
