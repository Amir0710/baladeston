import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';

abstract class CollectionItemModelFilterFailure
    extends BaseCollectionValidationFailure {
  const CollectionItemModelFilterFailure();
}

//  ids


class CollectionItemModelFilterInvalidIdsFailure
    extends CollectionItemModelFilterFailure {
  const CollectionItemModelFilterInvalidIdsFailure();
}

//  collectionId


class CollectionItemModelFilterInvalidCollectionIdFailure
    extends CollectionItemModelFilterFailure {
  const CollectionItemModelFilterInvalidCollectionIdFailure();
}


//  status

class CollectionItemModelFilterInvalidStatusValueFailure
    extends CollectionItemModelFilterFailure {
  const CollectionItemModelFilterInvalidStatusValueFailure();
}

//  adderId

class CollectionItemModelFilterInvalidAdderIdFailure
    extends CollectionItemModelFilterFailure {
  const CollectionItemModelFilterInvalidAdderIdFailure();
}

//  limit

class CollectionItemModelFilterInvalidLimitFailure
    extends CollectionItemModelFilterFailure {
  const CollectionItemModelFilterInvalidLimitFailure();
}

//  offset

class CollectionItemModelFilterInvalidOffsetFailure
    extends CollectionItemModelFilterFailure {
  const CollectionItemModelFilterInvalidOffsetFailure();
}

//  order

class CollectionItemModelFilterInvalidOrderFailure
    extends CollectionItemModelFilterFailure {
  const CollectionItemModelFilterInvalidOrderFailure();
}

//  general

class CollectionItemModelFilterEmptyFailure extends CollectionItemModelFilterFailure {
  const CollectionItemModelFilterEmptyFailure();
}
