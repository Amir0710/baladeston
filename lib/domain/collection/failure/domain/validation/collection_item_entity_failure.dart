// collection_item_entity_failure.dart

import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';

abstract class CollectionItemEntityFailure
    extends BaseCollectionValidationFailure {
  const CollectionItemEntityFailure();
}

//  id

class CollectionItemEntityInvalidIdFailure extends CollectionItemEntityFailure {
  const CollectionItemEntityInvalidIdFailure();
}

//  status

class CollectionItemEntityInvalidStatusFailure
    extends CollectionItemEntityFailure {
  const CollectionItemEntityInvalidStatusFailure();
}

//  adderId

class CollectionItemEntityMissingAdderIdFailure
    extends CollectionItemEntityFailure {
  const CollectionItemEntityMissingAdderIdFailure();
}

class CollectionItemEntityInvalidAdderIdFailure
    extends CollectionItemEntityFailure {
  const CollectionItemEntityInvalidAdderIdFailure();
}

//  videoId

class CollectionItemEntityMissingVideoIdFailure
    extends CollectionItemEntityFailure {
  const CollectionItemEntityMissingVideoIdFailure();
}

class CollectionItemEntityInvalidVideoIdFailure
    extends CollectionItemEntityFailure {
  const CollectionItemEntityInvalidVideoIdFailure();
}

//  collectionId

class CollectionItemEntityMissingCollectionIdFailure
    extends CollectionItemEntityFailure {
  const CollectionItemEntityMissingCollectionIdFailure();
}

class CollectionItemEntityInvalidCollectionIdFailure
    extends CollectionItemEntityFailure {
  const CollectionItemEntityInvalidCollectionIdFailure();
}

//  addedAt

class CollectionItemEntityMissingAddedAtFailure
    extends CollectionItemEntityFailure {
  const CollectionItemEntityMissingAddedAtFailure();
}

class CollectionItemEntityInvalidAddedAtFailure
    extends CollectionItemEntityFailure {
  const CollectionItemEntityInvalidAddedAtFailure();
}

//  lastTransaction

class CollectionItemEntityMissingLastTransactionFailure
    extends CollectionItemEntityFailure {
  const CollectionItemEntityMissingLastTransactionFailure();
}

class CollectionItemEntityInvalidLastTransactionFailure
    extends CollectionItemEntityFailure {
  const CollectionItemEntityInvalidLastTransactionFailure();
}
