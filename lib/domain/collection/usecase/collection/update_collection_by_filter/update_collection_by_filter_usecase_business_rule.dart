import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/collection/filter/model/collection_query_filter.dart';
import 'package:baladeston/domain/collection/entity/collection_entity/collection_entity.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/failure/domain/validation/collection_entity_failure.dart';
import 'package:baladeston/domain/collection/failure/domain/validation/collection_filter_failure.dart';

class UpdateCollectionByFilterUsecaseBusinessRule {
  final CollectionEntity collection;
  final CollectionQueryFilter filter;
  static const Limits _limits = Limits();

  const UpdateCollectionByFilterUsecaseBusinessRule({
    required this.collection,
    required this.filter,
  });

  Result<void, CollectionFailure> validate() {
    late Result<void, CollectionFailure> result;

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

  Result<void, CollectionFailure> _entityValidation() {
    if (collection.title.isEmpty) {
      return const Result.failure(CollectionEntityMissingTitleFailure());
    }

    if (collection.ownerId <= 0) {
      return const Result.failure(CollectionEntityInvalidOwnerIdFailure());
    }

    return const Result.success(null);
  }
}
