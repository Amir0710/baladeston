import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/collection/entity/collection_item_entity/collection_item_entity.dart';
import 'package:baladeston/domain/collection/failure/domain/validation/collection_item_entity_failure.dart';

class UploadCollectionItemUsecaseBusinessRule {
  final CollectionItemEntity entity;

  const UploadCollectionItemUsecaseBusinessRule({
    required this.entity,
  });

  Result<void, CollectionItemEntityFailure> validate() {
    return _itemValidation();
  }

  Result<void, CollectionItemEntityFailure> _itemValidation() {
    if (entity.id != null) {
      return const Result.failure(
        CollectionItemEntityInvalidIdFailure(),
      );
    }

    if (entity.adderId <= 0) {
      return const Result.failure(
        CollectionItemEntityInvalidAdderIdFailure(),
      );
    }

    if (entity.videoId <= 0) {
      return const Result.failure(
        CollectionItemEntityInvalidVideoIdFailure(),
      );
    }

    if (entity.collectionId <= 0) {
      return const Result.failure(
        CollectionItemEntityInvalidCollectionIdFailure(),
      );
    }

    if ((entity.addedAt != null && entity.lastTransaction != null)) {
      if (entity.lastTransaction!.isBefore(entity.addedAt!)) {
        return const Result.failure(
          CollectionItemEntityInvalidLastTransactionFailure(),
        );
      }
    }

    return const Result.success(null);
  }
}
