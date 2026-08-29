import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';

abstract class CollectionItemFilterFailure
    extends BaseCollectionValidationFailure {
  const CollectionItemFilterFailure();
}


// ids
final class CollectionItemFilterInvalidIdsFailure extends CollectionItemFilterFailure {
  const CollectionItemFilterInvalidIdsFailure();
}

// searchTerm
final class CollectionItemFilterSearchTermTooShortFailure
    extends CollectionItemFilterFailure {
  const CollectionItemFilterSearchTermTooShortFailure();
}

final class CollectionItemFilterSearchTermTooLongFailure
    extends CollectionItemFilterFailure {
  const CollectionItemFilterSearchTermTooLongFailure();
}

final class CollectionItemFilterControlCharSearchTermFailure
    extends CollectionItemFilterFailure {
  const CollectionItemFilterControlCharSearchTermFailure();
}

final class CollectionItemFilterContainsHtmlSearchTermFailure
    extends CollectionItemFilterFailure {
  const CollectionItemFilterContainsHtmlSearchTermFailure();
}

final class CollectionItemFilterEmojiOnlySearchTermFailure
    extends CollectionItemFilterFailure {
  const CollectionItemFilterEmojiOnlySearchTermFailure();
}

// rating
final class CollectionItemFilterInvalidMinRatingFailure
    extends CollectionItemFilterFailure {
  const
  CollectionItemFilterInvalidMinRatingFailure();
}


// price
class CollectionItemFilterMinPriceFailure extends CollectionItemFilterFailure {
  const CollectionItemFilterMinPriceFailure();
}

class CollectionItemFilterMaxPriceFailure extends CollectionItemFilterFailure {
  const CollectionItemFilterMaxPriceFailure();
}

class CollectionItemFilterPriceRangeFailure extends CollectionItemFilterFailure {
  const CollectionItemFilterPriceRangeFailure();
}


//  collectionId

class CollectionItemFilterInvalidCollectionIdFailure
    extends CollectionItemFilterFailure {
  const CollectionItemFilterInvalidCollectionIdFailure();
}

//  videoId

class CollectionItemFilterInvalidVideoIdFailure
    extends CollectionItemFilterFailure {
  const CollectionItemFilterInvalidVideoIdFailure();
}


//  general

class CollectionItemFilterEmptyFailure extends CollectionItemFilterFailure {
  const CollectionItemFilterEmptyFailure();
}
