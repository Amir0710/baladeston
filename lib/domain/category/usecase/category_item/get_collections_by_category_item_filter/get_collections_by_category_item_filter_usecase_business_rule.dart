import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
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
    if (categoryItemFilter.limit < _limits.minFilterLimitSize ||
        categoryItemFilter.limit > _limits.maxFilterLimitSize) {
      return Result.failure(CategoryItemFilterInvalidLimitFailure());
    }
    if (categoryItemFilter.offset < 0) {
      return Result.failure(CategoryItemFilterInvalidOffsetFailure());
    }

    if (categoryItemFilter.collectionId != null && categoryItemFilter.collectionId! < 0) {
      return Result.failure(CategoryItemFilterInvalidCollectionIdFailure());
    }
    if (categoryItemFilter.adderId != null && categoryItemFilter.adderId! < 0) {
      return Result.failure(CategoryItemFilterInvalidAdderIdFailure());
    }
    if (categoryItemFilter.categoryId != null && categoryItemFilter.categoryId! < 0) {
      return Result.failure(CategoryItemFilterInvalidCategoryIdFailure());
    }
    return const Result.success(null);
  }

  Result<void, CollectionFilterFailure> _collectionFilterValidation() {
    if (collectionQueryFilter.limit <= 0) {
      return const Result.failure(CollectionFilterInvalidLimitFailure());
    }

    if (collectionQueryFilter.offset < 0) {
      return const Result.failure(CollectionFilterInvalidOffsetFailure());
    }

    final minCount = collectionQueryFilter.minCount;
    final maxCount = collectionQueryFilter.maxCount;

    if (minCount != null && maxCount != null && minCount > maxCount) {
      return const Result.failure(CollectionFilterInvalidCountRangeFailure());
    }

    if (minCount != null && minCount < _limits.collectionMinCount) {
      return const Result.failure(CollectionFilterInvalidMinCountFailure());
    }

    if (maxCount != null && maxCount > _limits.collectionMaxCount) {
      return const Result.failure(CollectionFilterInvalidMaxCountFailure());
    }

    final minPrice = collectionQueryFilter.minPrice;
    final maxPrice = collectionQueryFilter.maxPrice;

    if (minPrice != null && maxPrice != null && minPrice > maxPrice) {
      return const Result.failure(CollectionFilterInvalidPriceRangeFailure());
    }

    final hasAnyFilter = collectionQueryFilter.ownerId != null ||
        (collectionQueryFilter.searchTerm?.isNotEmpty ?? false) ||
        collectionQueryFilter.status != null ||
        minCount != null ||
        maxCount != null ||
        minPrice != null ||
        maxPrice != null;

    if (!hasAnyFilter) {
      return const Result.failure(CollectionFilterEmptyFailure());
    }

    return const Result.success(null);
  }
}
