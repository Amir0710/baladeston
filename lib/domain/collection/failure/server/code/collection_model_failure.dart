import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';

abstract class CollectionModelFailure
    extends BaseCollectionServerValidationFailure {
  const CollectionModelFailure();
}

// id
class CollectionModelInvalidIdFailure extends CollectionModelFailure {
  const CollectionModelInvalidIdFailure();
}

// status
class CollectionModelInvalidStatusFailure extends CollectionModelFailure {
  const CollectionModelInvalidStatusFailure();
}


// count
class CollectionModelInvalidCountFailure extends CollectionModelFailure {
  const CollectionModelInvalidCountFailure();
}

// uniqueCode
class CollectionModelInvalidUniqueCodeFailure extends CollectionModelFailure {
  const CollectionModelInvalidUniqueCodeFailure();
}

// ownerId
class CollectionModelInvalidOwnerIdFailure extends CollectionModelFailure {
  const CollectionModelInvalidOwnerIdFailure();
}

// createdAt
class CollectionModelInvalidCreatedAtFailure extends CollectionModelFailure {
  const CollectionModelInvalidCreatedAtFailure();
}

// title
class CollectionModelInvalidTitleFailure extends CollectionModelFailure {
  const CollectionModelInvalidTitleFailure();
}

// lastTransaction
class CollectionModelInvalidLastTransactionFailure
    extends CollectionModelFailure {
  const CollectionModelInvalidLastTransactionFailure();
}

// price
class CollectionModelInvalidPriceFailure extends CollectionModelFailure {
  const CollectionModelInvalidPriceFailure();
}

// missing
class CollectionModelMissingField extends CollectionModelFailure {
  const CollectionModelMissingField();
}
