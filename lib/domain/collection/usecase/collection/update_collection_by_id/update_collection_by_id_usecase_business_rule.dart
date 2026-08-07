import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/collection/entity/collection_entity/collection_entity.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/failure/domain/validation/collection_entity_failure.dart';
import 'package:baladeston/domain/collection/failure/domain/validation/collection_id_failure.dart';

class UpdateCollectionByIdUsecaseBusinessRule {
  final CollectionEntity collection;
  final int id;

  const UpdateCollectionByIdUsecaseBusinessRule({
    required this.collection,
    required this.id,
  });

  Result<void, CollectionFailure> validate() {
    late Result<void, CollectionFailure> result;

    idValidation().when(
      success: (_) {
        result = collectionEntityValidation();
      },
      failure: (failure) {
        result = Result.failure(failure);
      },
    );

    return result;
  }

  Result<void, CollectionFailure> idValidation() {
    if (id <= 0) {
      return const Result.failure(CollectionIdInvalidFailure());
    }

    return const Result.success(null);
  }

  Result<void, CollectionFailure> collectionEntityValidation() {
    if (collection.title.isEmpty) {
      return const Result.failure(CollectionEntityMissingTitleFailure());
    }

    if (collection.ownerId < 0) {
      return const Result.failure(CollectionEntityInvalidOwnerIdFailure());
    }


    return const Result.success(null);
  }
}
