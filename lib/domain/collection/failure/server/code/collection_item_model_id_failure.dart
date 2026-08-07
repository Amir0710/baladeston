import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';

abstract class CollectionItemModelIdFailure extends BaseCollectionValidationFailure {
  const CollectionItemModelIdFailure();
}

// id

class CollectionItemModelIdRequiredFailure extends CollectionItemModelIdFailure {
  const CollectionItemModelIdRequiredFailure();
}

class CollectionItemModelIdInvalidFailure extends CollectionItemModelIdFailure {
  const CollectionItemModelIdInvalidFailure();
}
