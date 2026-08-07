import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/collection/entity/collection_entity/collection_entity.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/failure/domain/validation/collection_entity_failure.dart';

class CreateCollectionUsecaseBusinessRule {
  final CollectionEntity collection;

  const CreateCollectionUsecaseBusinessRule({
    required this.collection,
  });

  Result<void, CollectionFailure> validate() {
    return collectionEntityValidation();
  }

  Result<void, CollectionFailure> collectionEntityValidation() {
    // status
    if (collection.status == null) {
      return const Result.failure(CollectionEntityInvalidStatusFailure());
    }

    // thumbnailUrl
    if (collection.thumbnailUrl != null &&
        collection.thumbnailUrl!.trim().isNotEmpty &&
        !_isValidUrl(collection.thumbnailUrl!)) {
      return const Result.failure(CollectionEntityInvalidThumbnailUrlFailure());
    }

    // ownerId
    if (collection.ownerId < 0) {
      return const Result.failure(CollectionEntityInvalidOwnerIdFailure());
    }


    // createdAt
    if (collection.createdAt != null &&
        collection.createdAt!.isAfter(DateTime.now())) {
      return const Result.failure(
        CollectionEntityInvalidCreatedAtFailure(),
      );
    }

    // title
    if (collection.title.trim().length < 3) {
      return const Result.failure(CollectionEntityInvalidTitleFailure());
    }

    // lastTransaction
    if (collection.lastTransaction != null &&
        collection.lastTransaction!.isAfter(DateTime.now())) {
      return const Result.failure(
        CollectionEntityInvalidLastTransactionFailure(),
      );
    }

    return const Result.success(null);
  }

  bool _isValidUrl(String value) {
    final uri = Uri.tryParse(value);
    return uri != null && (uri.scheme == 'http' || uri.scheme == 'https');
  }
}
