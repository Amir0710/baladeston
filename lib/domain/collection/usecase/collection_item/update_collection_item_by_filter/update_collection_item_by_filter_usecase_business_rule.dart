import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/collection/filter/item/collection_item_query_filter.dart';
import 'package:baladeston/domain/collection/entity/collection_item_entity/collection_item_entity.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/failure/domain/validation/collection_item_entity_failure.dart';
import 'package:baladeston/domain/collection/failure/domain/validation/collection_item_filter_failure.dart';

class UpdateCollectionItemByFilterUseCaseBusinessRule {
  final CollectionItemEntity item;
  final CollectionItemQueryFilter filter;

  const UpdateCollectionItemByFilterUseCaseBusinessRule({
    required this.item,
    required this.filter,
  });

  Result<void, CollectionFailure> validate() {
    late Result<void, CollectionFailure> result;

    _filterValidation().when(
      success: (_) {
        result = _itemValidation();
      },
      failure: (failure) {
        result = Result.failure(failure);
      },
    );

    return result;
  }

  Result<void, CollectionItemFilterFailure> _filterValidation() {
    if (filter.collectionId! <= 0) {
      return const Result.failure(
          CollectionItemFilterInvalidCollectionIdFailure());
    }

    if (filter.status == null && filter.collectionId == null) {
      return const Result.failure(CollectionItemFilterEmptyFailure());
    }

    if (filter.limit <= 0 || filter.limit > 20) {
      return const Result.failure(CollectionItemFilterInvalidLimitFailure());
    }

    return const Result.success(null);
  }

  Result<void, CollectionItemEntityFailure> _itemValidation() {
    if (item.id != null) {
      return const Result.failure(
        CollectionItemEntityInvalidIdFailure(),
      );
    }

    if (item.adderId <= 0) {
      return const Result.failure(
        CollectionItemEntityInvalidAdderIdFailure(),
      );
    }

    if (item.videoId <= 0) {
      return const Result.failure(
        CollectionItemEntityInvalidVideoIdFailure(),
      );
    }

    if (item.collectionId <= 0) {
      return const Result.failure(
        CollectionItemEntityInvalidCollectionIdFailure(),
      );
    }

    if ((item.addedAt != null && item.lastTransaction != null)) {
      if (item.lastTransaction!.isBefore(item.addedAt!)) {
        return const Result.failure(
          CollectionItemEntityInvalidLastTransactionFailure(),
        );
      }
    }

    return const Result.success(null);
  }
}
