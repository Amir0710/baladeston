import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';

abstract class CollectionItemModelFailure
    extends BaseCollectionValidationFailure {
  const CollectionItemModelFailure();
}

// id
class CollectionItemModelInvalidIdFailure extends CollectionItemModelFailure {
  const CollectionItemModelInvalidIdFailure();
}

// title
class CollectionItemModelInvalidTitleFailure extends CollectionItemModelFailure {
  const CollectionItemModelInvalidTitleFailure();
}

// status
class CollectionItemModelInvalidStatusFailure extends CollectionItemModelFailure {
  const CollectionItemModelInvalidStatusFailure();
}

// adderId
class CollectionItemModelInvalidAdderIdFailure extends CollectionItemModelFailure {
  const CollectionItemModelInvalidAdderIdFailure();
}

// videoId
class CollectionItemModelInvalidVideoIdFailure extends CollectionItemModelFailure {
  const CollectionItemModelInvalidVideoIdFailure();
}

// collectionId
class CollectionItemModelInvalidCollectionIdFailure extends CollectionItemModelFailure {
  const CollectionItemModelInvalidCollectionIdFailure();
}

// addedAt
class CollectionItemModelInvalidAddedAtFailure extends CollectionItemModelFailure {
  const CollectionItemModelInvalidAddedAtFailure();
}

// lastTransaction
class CollectionItemModelInvalidLastTransactionFailure extends CollectionItemModelFailure {
  const CollectionItemModelInvalidLastTransactionFailure();
}

// avgRate
class CollectionItemModelInvalidAvgRateFailure extends CollectionItemModelFailure {
  const CollectionItemModelInvalidAvgRateFailure();
}

// rateCount
class CollectionItemModelInvalidRateCountFailure extends CollectionItemModelFailure {
  const CollectionItemModelInvalidRateCountFailure();
}

// thumbnailUrl
class CollectionItemModelInvalidThumbnailUrlFailure extends CollectionItemModelFailure {
  const CollectionItemModelInvalidThumbnailUrlFailure();
}

// missing
class CollectionItemModelMissingFieldFailure extends CollectionItemModelFailure {
  const CollectionItemModelMissingFieldFailure();
}
