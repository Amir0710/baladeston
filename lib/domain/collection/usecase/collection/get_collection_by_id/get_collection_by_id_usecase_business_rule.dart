import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/failure/domain/validation/collection_id_failure.dart';

class GetCollectionByIdUsecaseBusinessRule {
  final int collectionId;

  const GetCollectionByIdUsecaseBusinessRule({
    required this.collectionId,
  });

  Result<void, CollectionFailure> validate() {
    return idValidation();
  }

  Result<void, CollectionFailure> idValidation() {
    if (collectionId <= 0) {
      return const Result.failure(CollectionIdInvalidFailure());
    }
    return const Result.success(null);
  }
}
