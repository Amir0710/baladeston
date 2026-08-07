import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';

abstract class CollectionModelFilterFailure
    extends BaseCollectionServerValidationFailure {
  const CollectionModelFilterFailure();
}

// searchTerm
class CollectionModelFilterInvalidSearchTermFailure extends CollectionModelFilterFailure {
  const CollectionModelFilterInvalidSearchTermFailure();
}

// ownerId
class CollectionModelFilterInvalidOwnerIdFailure extends CollectionModelFilterFailure {
  const CollectionModelFilterInvalidOwnerIdFailure();
}

// status
class CollectionModelFilterInvalidStatusFailure extends CollectionModelFilterFailure {
  const CollectionModelFilterInvalidStatusFailure();
}

// minCount / maxCount
class CollectionModelFilterInvalidMinCountFailure extends CollectionModelFilterFailure {
  const CollectionModelFilterInvalidMinCountFailure();
}

class CollectionModelFilterInvalidMaxCountFailure extends CollectionModelFilterFailure {
  const CollectionModelFilterInvalidMaxCountFailure();
}

class CollectionModelFilterInvalidCountRangeFailure extends CollectionModelFilterFailure {
  const CollectionModelFilterInvalidCountRangeFailure();
}

// minPrice / maxPrice
class CollectionModelFilterInvalidMinPriceFailure extends CollectionModelFilterFailure {
  const CollectionModelFilterInvalidMinPriceFailure();
}

class CollectionModelFilterInvalidMaxPriceFailure extends CollectionModelFilterFailure {
  const CollectionModelFilterInvalidMaxPriceFailure();
}

class CollectionModelFilterInvalidPriceRangeFailure extends CollectionModelFilterFailure {
  const CollectionModelFilterInvalidPriceRangeFailure();
}

// limit
class CollectionModelFilterInvalidLimitFailure extends CollectionModelFilterFailure {
  const CollectionModelFilterInvalidLimitFailure();
}

// offset
class CollectionModelFilterInvalidOffsetFailure extends CollectionModelFilterFailure {
  const CollectionModelFilterInvalidOffsetFailure();
}

// order
class CollectionModelFilterInvalidOrderFailure extends CollectionModelFilterFailure {
  const CollectionModelFilterInvalidOrderFailure();
}

// empty
class CollectionModelFilterEmptyFailure extends CollectionModelFilterFailure {
  const CollectionModelFilterEmptyFailure();
}
