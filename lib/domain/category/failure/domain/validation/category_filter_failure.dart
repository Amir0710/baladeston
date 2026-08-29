import 'package:baladeston/domain/category/failure/base_category_failure.dart';



abstract class CategoryFilterFailure extends BaseCategoryValidationFailure{
  const CategoryFilterFailure();
}

// ids
final class CategoryFilterInvalidIdsFailure extends CategoryFilterFailure {
  const CategoryFilterInvalidIdsFailure();
}

// searchTerm
final class CategoryFilterSearchTermTooShortFailure
    extends CategoryFilterFailure {
  const CategoryFilterSearchTermTooShortFailure();
}

final class CategoryFilterSearchTermTooLongFailure
    extends CategoryFilterFailure {
  const CategoryFilterSearchTermTooLongFailure();
}

final class CategoryFilterControlCharSearchTermFailure
    extends CategoryFilterFailure {
  const CategoryFilterControlCharSearchTermFailure();
}

final class CategoryFilterContainsHtmlSearchTermFailure
    extends CategoryFilterFailure {
  const CategoryFilterContainsHtmlSearchTermFailure();
}

final class CategoryFilterEmojiOnlySearchTermFailure
    extends CategoryFilterFailure {
  const CategoryFilterEmojiOnlySearchTermFailure();
}

// rating
final class CategoryFilterInvalidMinRatingFailure
    extends CategoryFilterFailure {
  const CategoryFilterInvalidMinRatingFailure();
}

// minCount / maxCount
final class CategoryFilterInvalidMinCountFailure
    extends CategoryFilterFailure {
  const CategoryFilterInvalidMinCountFailure();
}

final class CategoryFilterInvalidMaxCountFailure
    extends CategoryFilterFailure {
  const CategoryFilterInvalidMaxCountFailure();
}

final class CategoryFilterInvalidCountRangeFailure
    extends CategoryFilterFailure {
  const CategoryFilterInvalidCountRangeFailure();
}

// empty
final class CategoryFilterEmptyFailure extends CategoryFilterFailure {
  const CategoryFilterEmptyFailure();
}
