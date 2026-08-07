import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
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
    if (filter.limit <= 0) {
      return const Result.failure(CollectionFilterInvalidLimitFailure());
    }

    if (filter.offset < 0) {
      return const Result.failure(CollectionFilterInvalidOffsetFailure());
    }

    final minCount = filter.minCount;
    final maxCount = filter.maxCount;

    if (minCount != null && maxCount != null && minCount > maxCount) {
      return const Result.failure(CollectionFilterInvalidCountRangeFailure());
    }

    if (minCount != null && minCount < _limits.collectionMinCount) {
      return const Result.failure(CollectionFilterInvalidMinCountFailure());
    }

    if (maxCount != null && maxCount > _limits.collectionMaxCount) {
      return const Result.failure(CollectionFilterInvalidMaxCountFailure());
    }

    final minPrice = filter.minPrice;
    final maxPrice = filter.maxPrice;

    if (minPrice != null && maxPrice != null && minPrice > maxPrice) {
      return const Result.failure(CollectionFilterInvalidPriceRangeFailure());
    }

    final hasAnyFilter = filter.ownerId != null ||
        (filter.searchTerm?.isNotEmpty ?? false) ||
        filter.status != null ||
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
