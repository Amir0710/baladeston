import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/failure/domain/validation/collection_item_id_failure.dart';

class RemoveCollectionItemByIdUseCaseBusinessRule {
  final int itemId;

  const RemoveCollectionItemByIdUseCaseBusinessRule({
    required this.itemId,
  });

  Result<void, CollectionItemIdFailure> validate() {
    return _idValidation();
  }

  Result<void, CollectionItemIdFailure> _idValidation() {
    if (itemId <= 0) {
      return const Result.failure(CollectionItemIdInvalidFailure());
    }
    return const Result.success(null);
  }
}
