import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';

abstract class CollectionIdFailure extends BaseCollectionValidationFailure {
  const CollectionIdFailure();
}
// id

class CollectionIdInvalidFailure extends CollectionIdFailure {
  const CollectionIdInvalidFailure();
}
