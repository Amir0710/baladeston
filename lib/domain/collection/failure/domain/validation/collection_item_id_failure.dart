import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';

abstract class CollectionItemIdFailure extends BaseCollectionValidationFailure {
  const CollectionItemIdFailure();
}

// id

class CollectionItemIdRequiredFailure extends CollectionItemIdFailure {
  const CollectionItemIdRequiredFailure();
}

class CollectionItemIdInvalidFailure extends CollectionItemIdFailure {
  const CollectionItemIdInvalidFailure();
}
