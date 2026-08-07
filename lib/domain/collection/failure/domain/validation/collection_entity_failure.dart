import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';

abstract class CollectionEntityFailure extends BaseCollectionValidationFailure {
  const CollectionEntityFailure();
}

// id
final class CollectionEntityInvalidIdFailure extends CollectionEntityFailure {
  const CollectionEntityInvalidIdFailure();
}

// status
final class CollectionEntityInvalidStatusFailure
    extends CollectionEntityFailure {
  const CollectionEntityInvalidStatusFailure();
}

// thumbnailUrl
final class CollectionEntityInvalidThumbnailUrlFailure
    extends CollectionEntityFailure {
  const CollectionEntityInvalidThumbnailUrlFailure();
}

// count
final class CollectionEntityInvalidCountFailure
    extends CollectionEntityFailure {
  const CollectionEntityInvalidCountFailure();
}

// uniqueCode
final class CollectionEntityInvalidUniqueCodeFailure
    extends CollectionEntityFailure {
  const CollectionEntityInvalidUniqueCodeFailure();
}

// ownerId
final class CollectionEntityMissingOwnerIdFailure
    extends CollectionEntityFailure {
  const CollectionEntityMissingOwnerIdFailure();
}

final class CollectionEntityInvalidOwnerIdFailure
    extends CollectionEntityFailure {
  const CollectionEntityInvalidOwnerIdFailure();
}

// createdAt
final class CollectionEntityMissingCreatedAtFailure
    extends CollectionEntityFailure {
  const CollectionEntityMissingCreatedAtFailure();
}

final class CollectionEntityInvalidCreatedAtFailure
    extends CollectionEntityFailure {
  const CollectionEntityInvalidCreatedAtFailure();
}

// title
final class CollectionEntityMissingTitleFailure
    extends CollectionEntityFailure {
  const CollectionEntityMissingTitleFailure();
}

final class CollectionEntityInvalidTitleFailure
    extends CollectionEntityFailure {
  const CollectionEntityInvalidTitleFailure();
}

// lastTransaction
final class CollectionEntityMissingLastTransactionFailure
    extends CollectionEntityFailure {
  const CollectionEntityMissingLastTransactionFailure();
}

final class CollectionEntityInvalidLastTransactionFailure
    extends CollectionEntityFailure {
  const CollectionEntityInvalidLastTransactionFailure();
}
