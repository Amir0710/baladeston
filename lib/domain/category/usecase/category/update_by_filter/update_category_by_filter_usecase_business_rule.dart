import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/core/variable/image_url_content_guard.dart';
import 'package:baladeston/core/variable/text_content_guard.dart';
import 'package:baladeston/data/category/filter/model/category_query_filter.dart';
import 'package:baladeston/domain/category/entity/category_entity/category_entity.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/failure/domain/validation/category_entity_failure.dart';
import 'package:baladeston/domain/category/failure/domain/validation/category_filter_failure.dart';
import 'package:baladeston/domain/category/failure/domain/validation/category_image_url_failure.dart';

class UpdateCategoryByFilterUsecaseBusinessRule {
  final CategoryQueryFilter filter;
  final CategoryEntity category;
static const Limits _limits = Limits() ;
  const UpdateCategoryByFilterUsecaseBusinessRule({
    required this.filter,
    required this.category,
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

  Result<void, CategoryFilterFailure> _filterValidation() {
    final ids = filter.ids;
    final searchTerm = filter.searchTerm?.trim();
    final type = filter.type;
    final minCount = filter.minCount;
    final maxCount = filter.maxCount;
    final minRating = filter.minRating;

    // ids
    if (ids != null) {
      if (ids.isEmpty || ids.any((id) => id <= 0)) {
        return const Result.failure(CategoryFilterInvalidIdsFailure());
      }
    }

    // search term
    if (searchTerm != null && searchTerm.isNotEmpty) {
      if (TextContentGuard.containsHtml(searchTerm)) {
        return const Result.failure(CategoryFilterContainsHtmlSearchTermFailure());
      }
      if (TextContentGuard.isEmojiOnly(searchTerm)) {
        return const Result.failure(CategoryFilterEmojiOnlySearchTermFailure());
      }
      if (TextContentGuard.hasControlCharacters(searchTerm)) {
        return const Result.failure(CategoryFilterControlCharSearchTermFailure());
      }

      if (searchTerm.length < _limits.minCategoryFilterSearchTermLength) {
        return const Result.failure(CategoryFilterSearchTermTooShortFailure());
      }

      if (searchTerm.length > _limits.maxCategoryFilterSearchTermLength) {
        return const Result.failure(CategoryFilterSearchTermTooLongFailure());
      }
    }

    // count bounds
    if (minCount != null && minCount < _limits.minCategoryCount) {
      return const Result.failure(CategoryFilterInvalidMinCountFailure());
    }

    if (maxCount != null && maxCount > _limits.maxCategoryCount) {
      return const Result.failure(CategoryFilterInvalidMaxCountFailure());
    }

    if (minCount != null && maxCount != null && minCount > maxCount) {
      return const Result.failure(CategoryFilterInvalidCountRangeFailure());
    }

    // rating
    if (minRating != null) {
      if (minRating < _limits.minRate || minRating > _limits.maxRate) {
        return const Result.failure(CategoryFilterInvalidMinRatingFailure());
      }
    }

    // empty filter
    final isEmpty = ids == null &&
        (searchTerm == null || searchTerm.isEmpty) &&
        type == null &&
        minCount == null &&
        maxCount == null &&
        minRating == null;

    if (isEmpty) {
      return const Result.failure(CategoryFilterEmptyFailure());
    }

    return const Result.success(null);
  }

  Result<void, BaseCategoryValidationFailure> _entityValidation() {
    // parent
    if (category.parent != null && category.parent! < 0) {
      return const Result.failure(CategoryEntityInvalidParentFailure());
    }

    // title
    final title = category.title.trim();

    if (title.isEmpty) {
      return const Result.failure(CategoryEntityMissingTitleFailure());
    }
    if (TextContentGuard.containsHtml(title)) {
      return const Result.failure(CategoryEntityContainsHtmlTitleFailure());
    }
    if (TextContentGuard.isEmojiOnly(title)) {
      return const Result.failure(CategoryEntityEmojiOnlyTitleFailure());
    }
    if (TextContentGuard.hasControlCharacters(title)) {
      return const Result.failure(CategoryEntityControlCharTitleFailure());
    }
    if (title.length < _limits.minCategoryTitle) {
      return const Result.failure(CategoryEntityTitleTooShortFailure());
    }
    if (title.length > _limits.maxCategoryTitle) {
      return const Result.failure(CategoryEntityTooLongTitleFailure());
    }

    // description
    final description = category.description.trim();

    if (description.isEmpty) {
      return const Result.failure(CategoryEntityMissingDescriptionFailure());
    }
    if (TextContentGuard.hasControlCharacters(description)) {
      return const Result.failure(
          CategoryEntityControlCharDescriptionFailure());
    }
    if (TextContentGuard.isEmojiOnly(description)) {
      return const Result.failure(
          CategoryEntityEmojiOnlyDescriptionFailure());
    }
    if (TextContentGuard.containsHtml(description)) {
      return const Result.failure(
          CategoryEntityControlCharDescriptionFailure());
    }
    if (description.length < _limits.minCategoryDescription) {
      return const Result.failure(CategoryEntityTooShortDescriptionFailure());
    }
    if (description.length > _limits.maxCategoryDescription) {
      return const Result.failure(CategoryEntityTooLongDescriptionFailure());
    }


    // thumbnail url
    final thumbnailUrl = category.thumbnailUrl?.trim();

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
