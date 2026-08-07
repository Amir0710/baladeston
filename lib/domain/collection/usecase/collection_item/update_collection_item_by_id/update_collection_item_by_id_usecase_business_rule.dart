import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/collection/entity/collection_item_entity/collection_item_entity.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/failure/domain/validation/collection_item_entity_failure.dart';
import 'package:baladeston/domain/collection/failure/domain/validation/collection_item_id_failure.dart';

class UpdateCollectionItemByIdUseCaseBusinessRule {
  final CollectionItemEntity entity;
  final int id;

  const UpdateCollectionItemByIdUseCaseBusinessRule({
    required this.entity,
    required this.id,
  });

  Result<void, CollectionFailure> validate() {
    late Result<void, CollectionFailure> result;

    _itemValidation().when(
      success: (_) {
        result = _idValidation();
      },
      failure: (failure) {
        result = Result.failure(failure);
      },
    );

    return result;
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

  Result<void, CollectionItemIdFailure> _idValidation() {
    if (id <= 0) {
      return const Result.failure(CollectionItemIdInvalidFailure());
    }
    return const Result.success(null);
  }
}
