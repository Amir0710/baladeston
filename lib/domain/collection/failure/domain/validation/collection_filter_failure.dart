import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';


final class CollectionFilterFailure extends CollectionFailure {
  const CollectionFilterFailure();
}


// searchTerm
final class CollectionFilterInvalidSearchTermFailure extends CollectionFilterFailure {
  const CollectionFilterInvalidSearchTermFailure();
}

// ownerId
final class CollectionFilterInvalidOwnerIdFailure extends CollectionFilterFailure {
  const CollectionFilterInvalidOwnerIdFailure();
}

// status
final class CollectionFilterInvalidStatusFailure extends CollectionFilterFailure {
  const CollectionFilterInvalidStatusFailure();
}

// minCount / maxCount
final class CollectionFilterInvalidMinCountFailure extends CollectionFilterFailure {
  const CollectionFilterInvalidMinCountFailure();
}

final class CollectionFilterInvalidMaxCountFailure extends CollectionFilterFailure {
  const CollectionFilterInvalidMaxCountFailure();
}

final class CollectionFilterInvalidCountRangeFailure extends CollectionFilterFailure {
  const CollectionFilterInvalidCountRangeFailure();
}

// minPrice / maxPrice
final class CollectionFilterInvalidMinPriceFailure extends CollectionFilterFailure {
  const CollectionFilterInvalidMinPriceFailure();
}

final class CollectionFilterInvalidMaxPriceFailure extends CollectionFilterFailure {
  const CollectionFilterInvalidMaxPriceFailure();
}

final class CollectionFilterInvalidPriceRangeFailure extends CollectionFilterFailure {
  const CollectionFilterInvalidPriceRangeFailure();
}

// limit
final class CollectionFilterInvalidLimitFailure extends CollectionFilterFailure {
  const CollectionFilterInvalidLimitFailure();
}

// offset
final class CollectionFilterInvalidOffsetFailure extends CollectionFilterFailure {
  const CollectionFilterInvalidOffsetFailure();
}

// order
final class CollectionFilterInvalidOrderFailure extends CollectionFilterFailure {
  const CollectionFilterInvalidOrderFailure();
}

// empty
final class CollectionFilterEmptyFailure extends CollectionFilterFailure {
  const CollectionFilterEmptyFailure();
}