import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';

abstract class CollectionItemModelFailure
    extends BaseCollectionValidationFailure {
  const CollectionItemModelFailure();
}

//  id

class CollectionItemModelInvalidIdFailure extends CollectionItemModelFailure {
  const CollectionItemModelInvalidIdFailure();
}

//  status

class CollectionItemModelInvalidStatusFailure
    extends CollectionItemModelFailure {
  const CollectionItemModelInvalidStatusFailure();
}

//  adderId

class CollectionItemModelMissingAdderIdFailure
    extends CollectionItemModelFailure {
  const CollectionItemModelMissingAdderIdFailure();
}

class CollectionItemModelInvalidAdderIdFailure
    extends CollectionItemModelFailure {
  const CollectionItemModelInvalidAdderIdFailure();
}

//  videoId

class CollectionItemModelMissingVideoIdFailure
    extends CollectionItemModelFailure {
  const CollectionItemModelMissingVideoIdFailure();
}

class CollectionItemModelInvalidVideoIdFailure
    extends CollectionItemModelFailure {
  const CollectionItemModelInvalidVideoIdFailure();
}

//  collectionId

class CollectionItemModelMissingCollectionIdFailure
    extends CollectionItemModelFailure {
  const CollectionItemModelMissingCollectionIdFailure();
}

class CollectionItemModelInvalidCollectionIdFailure
    extends CollectionItemModelFailure {
  const CollectionItemModelInvalidCollectionIdFailure();
}

//  addedAt

class CollectionItemModelMissingAddedAtFailure
    extends CollectionItemModelFailure {
  const CollectionItemModelMissingAddedAtFailure();
}

class CollectionItemModelInvalidAddedAtFailure
    extends CollectionItemModelFailure {
  const CollectionItemModelInvalidAddedAtFailure();
}

//  lastTransaction

class CollectionItemModelMissingLastTransactionFailure
    extends CollectionItemModelFailure {
  const CollectionItemModelMissingLastTransactionFailure();
}

class CollectionItemModelInvalidLastTransactionFailure
    extends CollectionItemModelFailure {
  const CollectionItemModelInvalidLastTransactionFailure();
}
