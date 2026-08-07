import 'package:baladeston/domain/category/failure/base_category_failure.dart';

abstract class CategoryItemFilterFailure extends CategoryFailure {
  const CategoryItemFilterFailure();
}

// categoryId
final class CategoryItemFilterInvalidCategoryIdFailure
    extends CategoryItemFilterFailure {
  const CategoryItemFilterInvalidCategoryIdFailure();
}
// adderId
final class CategoryItemFilterInvalidAdderIdFailure
    extends CategoryItemFilterFailure {
  const CategoryItemFilterInvalidAdderIdFailure();
}
// collectionId
final class CategoryItemFilterInvalidCollectionIdFailure
    extends CategoryItemFilterFailure {
  const CategoryItemFilterInvalidCollectionIdFailure();
}

// status
final class CategoryItemFilterInvalidStatusFailure
    extends CategoryItemFilterFailure {
  const CategoryItemFilterInvalidStatusFailure();
}

// limit
final class CategoryItemFilterInvalidLimitFailure
    extends CategoryItemFilterFailure {
  const CategoryItemFilterInvalidLimitFailure();
}

// offset
final class CategoryItemFilterInvalidOffsetFailure
    extends CategoryItemFilterFailure {
  const CategoryItemFilterInvalidOffsetFailure();
}

// ascending
final class CategoryItemFilterInvalidAscendingFailure
    extends CategoryItemFilterFailure {
  const CategoryItemFilterInvalidAscendingFailure();
}

// order
final class CategoryItemFilterInvalidOrderFailure
    extends CategoryItemFilterFailure {
  const CategoryItemFilterInvalidOrderFailure();
}

// general

final class CategoryItemFilterEmptyFailure extends CategoryItemFilterFailure {
  const CategoryItemFilterEmptyFailure();
}
