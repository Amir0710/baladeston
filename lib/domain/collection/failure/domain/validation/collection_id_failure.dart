import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';

abstract class CollectionIdFailure extends BaseCollectionValidationFailure {
  const CollectionIdFailure();
}
// id

class CollectionIdMissingFailure extends CollectionIdFailure {
  const CollectionIdMissingFailure();
}

class CollectionIdInvalidFailure extends CollectionIdFailure {
  const CollectionIdInvalidFailure();
}
