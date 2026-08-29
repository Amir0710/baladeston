import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/core/variable/image_url_content_guard.dart';
import 'package:baladeston/core/variable/text_content_guard.dart';
import 'package:baladeston/data/category/filter/item/category_item_query_filter.dart';
import 'package:baladeston/domain/category/entity/category_item_entity/category_item_entity.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/failure/domain/validation/category_image_url_failure.dart';
import 'package:baladeston/domain/category/failure/domain/validation/category_item_entity_failure.dart';
import 'package:baladeston/domain/category/failure/domain/validation/category_item_filter_failure.dart';

class UpdateCategoryItemByFilterUsecaseBusinessRule {
  final CategoryItemEntity categoryItem;
  final CategoryItemQueryFilter filter;

  static const Limits _limits = Limits();

  const UpdateCategoryItemByFilterUsecaseBusinessRule({
    required this.categoryItem,
    required this.filter,
  });

  Result<void, CategoryFailure> validate() {
    late Result<void, CategoryFailure> result;

    _filterValidation().when(
      success: (_) {
        result = _entityValidation();
      },
      failure: (failure) {
        result = Result.failure(failure);
      },
    );

    return result;
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

  Result<void, BaseCategoryValidationFailure> _entityValidation() {
    // category id
    if (categoryItem.categoryId <= 0) {
      return const Result.failure(
        CategoryItemEntityInvalidCategoryIdFailure(),
      );
    }

    // collection id
    if (categoryItem.collectionId <= 0) {
      return const Result.failure(
        CategoryItemEntityInvalidCollectionIdFailure(),
      );
    }

    // title
    final title = categoryItem.title?.trim();

    if (title != null && title.isNotEmpty) {
      if (TextContentGuard.containsHtml(title)) {
        return const Result.failure(
            CategoryItemEntityContainsHtmlTitleFailure());
      }
      if (TextContentGuard.isEmojiOnly(title)) {
        return const Result.failure(CategoryItemEntityEmojiOnlyTitleFailure());
      }
      if (TextContentGuard.hasControlCharacters(title)) {
        return const Result.failure(
            CategoryItemEntityControlCharTitleFailure());
      }
      if (title.length < _limits.minCategoryItemTitle) {
        return const Result.failure(
          CategoryItemEntityTitleTooShortFailure(),
        );
      }
      if (title.length > _limits.maxCategoryItemTitle) {
        return const Result.failure(
          CategoryItemEntityTooLongTitleFailure(),
        );
      }
    }

    // thumbnai url
    final thumbnailUrl = categoryItem.thumbnailUrl?.trim();

    if (thumbnailUrl != null && thumbnailUrl.isNotEmpty) {
      if (!ImageUrlContentGuard.imageStructureValidation(thumbnailUrl)) {
        return const Result.failure(
          CategoryImageUrlStructuralFailure(),
        );
      }
      if (!ImageUrlContentGuard.imageSchemeValidation(thumbnailUrl)) {
        return const Result.failure(
          CategoryImageUrlUnsupportedSchemeFailure(),
        );
      }
      if (ImageUrlContentGuard.imageLengthValidation(thumbnailUrl)) {
        return const Result.failure(
          CategoryImageUrlInvalidLengthFailure(),
        );
      }
      if (ImageUrlContentGuard.imageFormatValidation(thumbnailUrl)) {
        return const Result.failure(
          CategoryImageUrlInvalidFormatFailure(),
        );
      }
    }

    return const Result.success(null);
  }
}
