import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';

abstract class CollectionModelFailure
    extends BaseCollectionServerValidationFailure {
  const CollectionModelFailure();
}

class CollectionModelInvalidIdFailure extends CollectionModelFailure {
  const CollectionModelInvalidIdFailure();
}

class CollectionModelInvalidStatusFailure extends CollectionModelFailure {
  const CollectionModelInvalidStatusFailure();
}

class CollectionModelInvalidThumbnailUrlFailure extends CollectionModelFailure {
  const CollectionModelInvalidThumbnailUrlFailure();
}

class CollectionModelInvalidCountFailure extends CollectionModelFailure {
  const CollectionModelInvalidCountFailure();
}

class CollectionModelInvalidUniqueCodeFailure extends CollectionModelFailure {
  const CollectionModelInvalidUniqueCodeFailure();
}

class CollectionModelMissingOwnerIdFailure extends CollectionModelFailure {
  const CollectionModelMissingOwnerIdFailure();
}

class CollectionModelInvalidOwnerIdFailure extends CollectionModelFailure {
  const CollectionModelInvalidOwnerIdFailure();
}

class CollectionModelMissingCreatedAtFailure extends CollectionModelFailure {
  const CollectionModelMissingCreatedAtFailure();
}

class CollectionModelInvalidCreatedAtFailure extends CollectionModelFailure {
  const CollectionModelInvalidCreatedAtFailure();
}

class CollectionModelMissingTitleFailure extends CollectionModelFailure {
  const CollectionModelMissingTitleFailure();
}

class CollectionModelInvalidTitleFailure extends CollectionModelFailure {
  const CollectionModelInvalidTitleFailure();
}

class CollectionModelMissingLastTransactionFailure extends CollectionModelFailure {
  const CollectionModelMissingLastTransactionFailure();
}

class CollectionModelInvalidLastTransactionFailure extends CollectionModelFailure {
  const CollectionModelInvalidLastTransactionFailure();
}
