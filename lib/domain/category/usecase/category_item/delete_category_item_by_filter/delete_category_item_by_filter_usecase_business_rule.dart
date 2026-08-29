import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/core/variable/text_content_guard.dart';
import 'package:baladeston/data/category/filter/item/category_item_query_filter.dart';
import 'package:baladeston/domain/category/failure/domain/validation/category_item_filter_failure.dart';

class DeleteCategoryItemByFilterUsecaseBusinessRule {
  static const Limits _limits = Limits();

  const DeleteCategoryItemByFilterUsecaseBusinessRule({required this.filter});

  final CategoryItemQueryFilter filter;

  Result<void, CategoryItemFilterFailure> validate() {
    return _filterValidation();
  }

  Result<void, CategoryItemFilterFailure> _filterValidation() {
    final ids = filter.ids;
    final categoryId = filter.categoryId;
    final collectionId = filter.collectionId;
    final minCount = filter.minCount;
    final minPrice = filter.minPrice;
    final maxCount = filter.maxCount;
    final maxPrice = filter.maxPrice;
    final searchTerm = filter.searchTerm?.trim();
    final minRating = filter.minRating;
    final adderId = filter.adderId; // this filed don't have invalid

    // ids
    if (ids != null) {
      if (ids.isEmpty || ids.any((id) => id <= 0)) {
        return const Result.failure(CategoryItemFilterInvalidIdsFailure());
      }
    }

    // search term
    if (searchTerm != null && TextContentGuard.containsHtml(searchTerm)) {
      return const Result.failure(
          CategoryItemFilterContainsHtmlSearchTermFailure());
    }
    if (searchTerm != null && TextContentGuard.isEmojiOnly(searchTerm)) {
      return const Result.failure(
          CategoryItemFilterEmojiOnlySearchTermFailure());
    }
    if (searchTerm != null &&
        TextContentGuard.hasControlCharacters(searchTerm)) {
      return const Result.failure(
          CategoryItemFilterControlCharSearchTermFailure());
    }
    if (searchTerm != null &&
        searchTerm.length < _limits.minCategoryItemFilterSearchTermLength) {
      return const Result.failure(
          CategoryItemFilterSearchTermTooShortFailure());
    }
    if (searchTerm != null &&
        searchTerm.length > _limits.maxCategoryItemFilterSearchTermLength) {
      return const Result.failure(CategoryItemFilterSearchTermTooLongFailure());
    }

    // count bounds
    if (minCount != null &&
        (minCount < _limits.minCollectionCount ||
            minCount > _limits.maxCollectionCount)) {
      return const Result.failure(CategoryItemFilterMinCountFailure());
    }
    if (maxCount != null &&
        (maxCount < _limits.minCollectionCount ||
            maxCount > _limits.maxCollectionCount)) {
      return const Result.failure(CategoryItemFilterMaxCountFailure());
    }

    if (minCount != null && maxCount != null && minCount > maxCount) {
      return const Result.failure(CategoryItemFilterCountRangeFailure());
    }

    // price bounds
    if (minPrice != null &&
        (minPrice < _limits.minCollectionPrice ||
            minPrice > _limits.maxCollectionPrice)) {
      return const Result.failure(CategoryItemFilterMinPriceFailure());
    }

    if (maxPrice != null &&
        (maxPrice < _limits.minCollectionPrice ||
            maxPrice > _limits.maxCollectionPrice)) {
      return const Result.failure(CategoryItemFilterMaxPriceFailure());
    }

    if (minPrice != null && maxPrice != null && minPrice > maxPrice) {
      return const Result.failure(CategoryItemFilterPriceRangeFailure());
    }

    // collection id
    if (collectionId != null && collectionId <= 0) {
      return const Result.failure(
          CategoryItemFilterInvalidCollectionIdFailure());
    }

    // category id
    if (categoryId != null && categoryId <= 0) {
      return const Result.failure(CategoryItemFilterInvalidCategoryIdFailure());
    }

    // rating
    if (minRating != null) {
      if (minRating < _limits.minRate || minRating > _limits.maxRate) {
        return const Result.failure(
            CategoryItemFilterInvalidMinRatingFailure());
      }
    }

    // empty filter
    final isEmpty = ids == null &&
        collectionId == null &&
        categoryId == null &&
        adderId == null &&
        minCount == null &&
        minPrice == null &&
        maxCount == null &&
        maxPrice == null &&
        (searchTerm == null || searchTerm.isEmpty) &&
        minRating == null;
    if (isEmpty) {
      return const Result.failure(CategoryItemFilterEmptyFailure());
    }

    return const Result.success(null);
  }
}
