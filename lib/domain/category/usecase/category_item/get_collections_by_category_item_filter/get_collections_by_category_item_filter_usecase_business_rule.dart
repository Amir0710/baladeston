import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/core/variable/text_content_guard.dart';
import 'package:baladeston/data/category/filter/item/category_item_query_filter.dart';
import 'package:baladeston/data/collection/filter/model/collection_query_filter.dart';
import 'package:baladeston/domain/category/failure/domain/validation/category_item_filter_failure.dart';
import 'package:baladeston/domain/category/failure/domain/validation/category_item_with_collection_failure.dart';
import 'package:baladeston/domain/collection/failure/domain/validation/collection_filter_failure.dart';

class GetCollectionsByCategoryItemFilterUsecaseBusinessRule {
  final CategoryItemQueryFilter categoryItemFilter;
  final CollectionQueryFilter collectionQueryFilter;
  static const Limits _limits = Limits();

  const GetCollectionsByCategoryItemFilterUsecaseBusinessRule({
    required this.categoryItemFilter,
    required this.collectionQueryFilter,
  });

  Result<void, CategoryItemWithCollectionFailure> validate() {
    final categoryItemResult = _filterValidation();
    final collectionResult = _collectionFilterValidation();

    final categoryItemFailure = categoryItemResult.when(
      success: (_) => null,
      failure: (failure) => failure,
    );

    final collectionFailure = collectionResult.when(
      success: (_) => null,
      failure: (failure) => failure,
    );

    if (categoryItemFailure != null || collectionFailure != null) {
      return Result.failure(CategoryItemWithCollectionFailure(
        categoryItemFilterFailure: categoryItemFailure,
        collectionFailure: collectionFailure,
      ));
    }

    return const Result.success(null);
  }

  Result<void, CategoryItemFilterFailure> _filterValidation() {
    final ids = categoryItemFilter.ids;
    final categoryId = categoryItemFilter.categoryId;
    final collectionId = categoryItemFilter.collectionId;
    final minCount = categoryItemFilter.minCount;
    final minPrice = categoryItemFilter.minPrice;
    final maxCount = categoryItemFilter.maxCount;
    final maxPrice = categoryItemFilter.maxPrice;
    final searchTerm = categoryItemFilter.searchTerm?.trim();
    final minRating = categoryItemFilter.minRating;
    final adderId = categoryItemFilter.adderId; // this filed don't have invalid

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

  Result<void, CollectionFilterFailure> _collectionFilterValidation() {
    final ids = collectionQueryFilter.ids;
    final minCount = collectionQueryFilter.minCount;
    final maxCount = collectionQueryFilter.maxCount;
    final minPrice = collectionQueryFilter.minPrice;
    final maxPrice = collectionQueryFilter.maxPrice;
    final searchTerm = collectionQueryFilter.searchTerm?.trim();
    final minRating = collectionQueryFilter.minRating;
    final ownerId = collectionQueryFilter.ownerId;
    final type = collectionQueryFilter.type ;



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
        collectionQueryFilter.status == null;

    if (isEmpty) {
      return const Result.failure(CollectionFilterEmptyFailure());
    }

    return const Result.success(null);
  }
}
