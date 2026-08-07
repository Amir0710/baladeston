import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';

abstract class CollectionItemFilterFailure
    extends BaseCollectionValidationFailure {
  const CollectionItemFilterFailure();
}

//  collectionId


class CollectionItemFilterInvalidCollectionIdFailure
    extends CollectionItemFilterFailure {
  const CollectionItemFilterInvalidCollectionIdFailure();
}
class CollectionItemFilterMissingCollectionIdFailure
    extends CollectionItemFilterFailure {
  const CollectionItemFilterMissingCollectionIdFailure();
}

//  status

class CollectionItemFilterInvalidStatusValueFailure
    extends CollectionItemFilterFailure {
  const CollectionItemFilterInvalidStatusValueFailure();
}

//  adderId

class CollectionItemFilterInvalidAdderIdFailure
    extends CollectionItemFilterFailure {
  const CollectionItemFilterInvalidAdderIdFailure();
}

//  limit

class CollectionItemFilterInvalidLimitFailure
    extends CollectionItemFilterFailure {
  const CollectionItemFilterInvalidLimitFailure();
}

//  offset

class CollectionItemFilterInvalidOffsetFailure
    extends CollectionItemFilterFailure {
  const CollectionItemFilterInvalidOffsetFailure();
}

//  order

class CollectionItemFilterInvalidOrderFailure
    extends CollectionItemFilterFailure {
  const CollectionItemFilterInvalidOrderFailure();
}

//  general

class CollectionItemFilterEmptyFailure extends CollectionItemFilterFailure {
  const CollectionItemFilterEmptyFailure();
}
