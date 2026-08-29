import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';

final class CollectionFilterFailure extends CollectionFailure {
  const CollectionFilterFailure();
}

// ids
final class CollectionFilterInvalidIdsFailure extends CollectionFilterFailure {
  const CollectionFilterInvalidIdsFailure();
}

// searchTerm
final class CollectionFilterSearchTermTooShortFailure
    extends CollectionFilterFailure {
  const CollectionFilterSearchTermTooShortFailure();
}

final class CollectionFilterSearchTermTooLongFailure
    extends CollectionFilterFailure {
  const CollectionFilterSearchTermTooLongFailure();
}

final class CollectionFilterControlCharSearchTermFailure
    extends CollectionFilterFailure {
  const CollectionFilterControlCharSearchTermFailure();
}

final class CollectionFilterContainsHtmlSearchTermFailure
    extends CollectionFilterFailure {
  const CollectionFilterContainsHtmlSearchTermFailure();
}

final class CollectionFilterEmojiOnlySearchTermFailure
    extends CollectionFilterFailure {
  const CollectionFilterEmojiOnlySearchTermFailure();
}

// rating
final class CollectionFilterInvalidMinRatingFailure
    extends CollectionFilterFailure {
  const CollectionFilterInvalidMinRatingFailure();
}

// minCount / maxCount
final class CollectionFilterMinCountFailure
    extends CollectionFilterFailure {
  const CollectionFilterMinCountFailure();
}

final class CollectionFilterMaxCountFailure
    extends CollectionFilterFailure {
  const CollectionFilterMaxCountFailure();
}

final class CollectionFilterCountRangeFailure
    extends CollectionFilterFailure {
  const CollectionFilterCountRangeFailure();
}

// minPrice / maxPrice
final class CollectionFilterMinPriceFailure
    extends CollectionFilterFailure {
  const CollectionFilterMinPriceFailure();
}

final class CollectionFilterMaxPriceFailure
    extends CollectionFilterFailure {
  const CollectionFilterMaxPriceFailure();
}

final class CollectionFilterPriceRangeFailure
    extends CollectionFilterFailure {
  const CollectionFilterPriceRangeFailure();
}


// empty
final class CollectionFilterEmptyFailure extends CollectionFilterFailure {
  const CollectionFilterEmptyFailure();
}
