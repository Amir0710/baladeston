import 'package:baladeston/domain/category/failure/base_category_failure.dart';

abstract class CategoryItemFilterFailure extends CategoryFailure {
  const CategoryItemFilterFailure();
}

// ids
final class CategoryItemFilterInvalidIdsFailure extends CategoryItemFilterFailure {
  const CategoryItemFilterInvalidIdsFailure();
}

// searchTerm
final class CategoryItemFilterSearchTermTooShortFailure
    extends CategoryItemFilterFailure {
  const CategoryItemFilterSearchTermTooShortFailure();
}

final class CategoryItemFilterSearchTermTooLongFailure
    extends CategoryItemFilterFailure {
  const CategoryItemFilterSearchTermTooLongFailure();
}

final class CategoryItemFilterControlCharSearchTermFailure
    extends CategoryItemFilterFailure {
  const CategoryItemFilterControlCharSearchTermFailure();
}

final class CategoryItemFilterContainsHtmlSearchTermFailure
    extends CategoryItemFilterFailure {
  const CategoryItemFilterContainsHtmlSearchTermFailure();
}

final class CategoryItemFilterEmojiOnlySearchTermFailure
    extends CategoryItemFilterFailure {
  const CategoryItemFilterEmojiOnlySearchTermFailure();
}



// minCount / maxCount
final class CategoryItemFilterMinCountFailure
    extends CategoryItemFilterFailure {
  const CategoryItemFilterMinCountFailure();
}

final class CategoryItemFilterMaxCountFailure
    extends CategoryItemFilterFailure {
  const CategoryItemFilterMaxCountFailure();
}

final class CategoryItemFilterCountRangeFailure
    extends CategoryItemFilterFailure {
  const CategoryItemFilterCountRangeFailure();
}

// minPrice / maxPrice
final class CategoryItemFilterMinPriceFailure
    extends CategoryItemFilterFailure {
  const CategoryItemFilterMinPriceFailure();
}

final class CategoryItemFilterMaxPriceFailure
    extends CategoryItemFilterFailure {
  const CategoryItemFilterMaxPriceFailure();
}

final class CategoryItemFilterPriceRangeFailure
    extends CategoryItemFilterFailure {
  const CategoryItemFilterPriceRangeFailure();
}


// rating
final class CategoryItemFilterInvalidMinRatingFailure
    extends CategoryItemFilterFailure {
  const CategoryItemFilterInvalidMinRatingFailure();
}

//  collection id

class CategoryItemFilterInvalidCollectionIdFailure
    extends CategoryItemFilterFailure {
  const CategoryItemFilterInvalidCollectionIdFailure();
}

//  category id

class CategoryItemFilterInvalidCategoryIdFailure
    extends CategoryItemFilterFailure {
  const CategoryItemFilterInvalidCategoryIdFailure();
}


//  general

class CategoryItemFilterEmptyFailure extends CategoryItemFilterFailure {
  const CategoryItemFilterEmptyFailure();
}