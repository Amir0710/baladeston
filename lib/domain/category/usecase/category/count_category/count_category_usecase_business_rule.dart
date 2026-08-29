import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/core/variable/text_content_guard.dart';
import 'package:baladeston/data/category/filter/model/category_query_filter.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/failure/domain/validation/category_filter_failure.dart';

class CountCategoryUsecaseBusinessRule {
  final CategoryQueryFilter filter;
  static const Limits _limits = Limits();

  const CountCategoryUsecaseBusinessRule({
    required this.filter,
  });

  Result<void, CategoryFailure> validate() {
    return _filterValidation();
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
}
