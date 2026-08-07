import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/category/filter/model/category_query_filter.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/failure/domain/validation/category_filter_failure.dart';

class CountCategoryUsecaseBusinessRule {
  final CategoryQueryFilter filter;

  const CountCategoryUsecaseBusinessRule({
    required this.filter,
  });

  Result<void, CategoryFailure> validate() {
    return categoryFilterValidation();
  }

  Result<void, CategoryFailure> categoryFilterValidation() {

    final hasSearchTerm =
        filter.searchTerm != null && filter.searchTerm!.trim().isNotEmpty;
    final hasSearchId = filter.searchId != null;
    final hasStatus = filter.status != null;
    final hasOwnerId = filter.ownerId != null;
    final hasMinCount = filter.minCount != null;
    final hasMaxCount = filter.maxCount != null;

    final isEmptyFilter = !hasSearchTerm &&
        !hasSearchId &&
        !hasStatus &&
        !hasOwnerId &&
        !hasMinCount &&
        !hasMaxCount;


    // searchTerm
    if (filter.searchTerm != null && filter.searchTerm!.trim().isEmpty) {
      return const Result.failure(CategoryFilterInvalidSearchTermFailure());
    }

    // searchId
    if (filter.searchId != null && filter.searchId! <= 0) {
      return const Result.failure(CategoryFilterInvalidSearchIdFailure());
    }

    // ownerId
    if (filter.ownerId != null && filter.ownerId! <= 0) {
      return const Result.failure(CategoryFilterInvalidOwnerIdFailure());
    }

    // minCount
    if (filter.minCount != null && filter.minCount! < 0) {
      return const Result.failure(CategoryFilterInvalidMinCountFailure());
    }

    // maxCount
    if (filter.maxCount != null && filter.maxCount! < 0) {
      return const Result.failure(CategoryFilterInvalidMaxCountFailure());
    }

    // count range
    if (filter.minCount != null &&
        filter.maxCount != null &&
        filter.minCount! > filter.maxCount!) {
      return const Result.failure(CategoryFilterInvalidCountRangeFailure());
    }

    // limit
    if (filter.limit <= 0) {
      return const Result.failure(CategoryFilterInvalidLimitFailure());
    }

    // offset
    if (filter.offset < 0) {
      return const Result.failure(CategoryFilterInvalidOffsetFailure());
    }

    // empty
    if (isEmptyFilter) {
      return const Result.failure(CategoryFilterEmptyFailure());
    }
    return const Result.success(null);
  }
}
