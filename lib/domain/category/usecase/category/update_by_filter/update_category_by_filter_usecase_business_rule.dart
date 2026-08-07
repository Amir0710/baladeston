import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/category/filter/model/category_query_filter.dart';
import 'package:baladeston/domain/category/entity/category_entity/category_entity.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/failure/domain/validation/category_entity_failure.dart';
import 'package:baladeston/domain/category/failure/domain/validation/category_filter_failure.dart';

class UpdateCategoryByFilterUsecaseBusinessRule {
  final CategoryQueryFilter filter;
  final CategoryEntity category;

  const UpdateCategoryByFilterUsecaseBusinessRule({
    required this.filter,
    required this.category,
  });

  Result<void, CategoryFailure> validate() {
    late Result<void, CategoryFailure> result;
    categoryFilterValidation().when(
      success: (_) {
        result = _entityValidation();
      },
      failure: (failure) {
        result = Result.failure(failure);
      },
    );
    return result;
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

  Result<void, CategoryFailure> _entityValidation() {

    //  parent id
    if (category.parent != null && category.parent! <= 0) {
      return const Result.failure(CategoryEntityInvalidParentFailure());
    }

    // title
    final title = category.title.trim();
    if (title.isEmpty) {
      return const Result.failure(CategoryEntityMissingTitleFailure());
    }
    if (title.length < 3 || title.length > 100) {
      return const Result.failure(CategoryEntityInvalidTitleFailure());
    }

    // ownerId
    if (category.ownerId <= 0) {
      return const Result.failure(CategoryEntityInvalidOwnerIdFailure());
    }

    // thumbnail url
    if (category.thumbnailUrl != null) {
      final thumbnail = category.thumbnailUrl!.trim();
      if (thumbnail.isEmpty || !_isValidUrl(thumbnail)) {
        return const Result.failure(CategoryEntityInvalidThumbnailUrlFailure());
      }
    }

    // createdAt
    if (category.createdAt != null && category.createdAt!.isAfter(DateTime.now())) {
      return const Result.failure(CategoryEntityInvalidCreatedAtFailure());
    }

    // lastTransaction
    if (category.lastTransaction != null && category.lastTransaction!.isAfter(DateTime.now())) {
      return const Result.failure(CategoryEntityInvalidLastTransactionFailure());
    }

    return const Result.success(null);
  }

  bool _isValidUrl(String url) {
    final uri = Uri.tryParse(url);
    return uri != null && (uri.scheme == 'http' || uri.scheme == 'https');
  }}
