import 'package:baladeston/domain/category/failure/base_category_failure.dart';



abstract class CategoryFilterFailure extends BaseCategoryValidationFailure{
  const CategoryFilterFailure();
}


// searchTerm
final class CategoryFilterInvalidSearchTermFailure extends CategoryFilterFailure {
  const CategoryFilterInvalidSearchTermFailure();
}

// searchId
final class CategoryFilterInvalidSearchIdFailure extends CategoryFilterFailure {
  const CategoryFilterInvalidSearchIdFailure();
}

// status
final class CategoryFilterInvalidStatusFailure extends CategoryFilterFailure {
  const CategoryFilterInvalidStatusFailure();
}

// ownerId
final class CategoryFilterInvalidOwnerIdFailure extends CategoryFilterFailure {
  const CategoryFilterInvalidOwnerIdFailure();
}

// minCount / maxCount
final class CategoryFilterInvalidMinCountFailure extends CategoryFilterFailure {
  const CategoryFilterInvalidMinCountFailure();
}

final class CategoryFilterInvalidMaxCountFailure extends CategoryFilterFailure {
  const CategoryFilterInvalidMaxCountFailure();
}

final class CategoryFilterInvalidCountRangeFailure extends CategoryFilterFailure {
  const CategoryFilterInvalidCountRangeFailure();
}

// limit
final class CategoryFilterInvalidLimitFailure extends CategoryFilterFailure {
  const CategoryFilterInvalidLimitFailure();
}

// offset
final class CategoryFilterInvalidOffsetFailure extends CategoryFilterFailure {
  const CategoryFilterInvalidOffsetFailure();
}

// ascending
final class CategoryFilterInvalidAscendingFailure extends CategoryFilterFailure {
  const CategoryFilterInvalidAscendingFailure();
}

// order
final class CategoryFilterInvalidOrderFailure extends CategoryFilterFailure {
  const CategoryFilterInvalidOrderFailure();
}

// empty
final class CategoryFilterEmptyFailure extends CategoryFilterFailure {
  const CategoryFilterEmptyFailure();
}
