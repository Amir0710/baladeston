import 'package:baladeston/domain/category/failure/base_category_failure.dart';

abstract class CategoryModelFilterFailure
    extends BaseCategoryValidationFailure {
  const CategoryModelFilterFailure();
}

// searchTerm
final class CategoryModelFilterInvalidSearchTermFailure
    extends CategoryModelFilterFailure {
  const CategoryModelFilterInvalidSearchTermFailure();
}

// searchId
final class CategoryModelFilterInvalidSearchIdFailure
    extends CategoryModelFilterFailure {
  const CategoryModelFilterInvalidSearchIdFailure();
}

// status
final class CategoryModelFilterInvalidStatusFailure
    extends CategoryModelFilterFailure {
  const CategoryModelFilterInvalidStatusFailure();
}

// ownerId
final class CategoryModelFilterInvalidOwnerIdFailure
    extends CategoryModelFilterFailure {
  const CategoryModelFilterInvalidOwnerIdFailure();
}

// minCount / maxCount
final class CategoryModelFilterInvalidMinCountFailure
    extends CategoryModelFilterFailure {
  const CategoryModelFilterInvalidMinCountFailure();
}

final class CategoryModelFilterInvalidMaxCountFailure
    extends CategoryModelFilterFailure {
  const CategoryModelFilterInvalidMaxCountFailure();
}

final class CategoryModelFilterInvalidCountRangeFailure
    extends CategoryModelFilterFailure {
  const CategoryModelFilterInvalidCountRangeFailure();
}

// limit
final class CategoryModelFilterInvalidLimitFailure
    extends CategoryModelFilterFailure {
  const CategoryModelFilterInvalidLimitFailure();
}

// offset
final class CategoryModelFilterInvalidOffsetFailure
    extends CategoryModelFilterFailure {
  const CategoryModelFilterInvalidOffsetFailure();
}

// ascending
final class CategoryModelFilterInvalidAscendingFailure
    extends CategoryModelFilterFailure {
  const CategoryModelFilterInvalidAscendingFailure();
}

// order
final class CategoryModelFilterInvalidOrderFailure
    extends CategoryModelFilterFailure {
  const CategoryModelFilterInvalidOrderFailure();
}

// empty
final class CategoryModelFilterEmptyFailure extends CategoryModelFilterFailure {
  const CategoryModelFilterEmptyFailure();
}
