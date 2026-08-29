import 'package:baladeston/domain/category/failure/base_category_failure.dart';

abstract class CategoryItemModelFilterFailure extends CategoryFailure {
  const CategoryItemModelFilterFailure();
}

// ids
final class CategoryItemModelFilterInvalidIdsFailure
    extends CategoryItemModelFilterFailure {
  const CategoryItemModelFilterInvalidIdsFailure();
}

// categoryId
final class CategoryItemModelFilterInvalidCategoryIdFailure
    extends CategoryItemModelFilterFailure {
  const CategoryItemModelFilterInvalidCategoryIdFailure();
}

// adderId
final class CategoryItemModelFilterInvalidAdderIdFailure
    extends CategoryItemModelFilterFailure {
  const CategoryItemModelFilterInvalidAdderIdFailure();
}

// collectionId
final class CategoryItemModelFilterInvalidCollectionIdFailure
    extends CategoryItemModelFilterFailure {
  const CategoryItemModelFilterInvalidCollectionIdFailure();
}

// status
final class CategoryItemModelFilterInvalidStatusFailure
    extends CategoryItemModelFilterFailure {
  const CategoryItemModelFilterInvalidStatusFailure();
}

// limit
final class CategoryItemModelFilterInvalidLimitFailure
    extends CategoryItemModelFilterFailure {
  const CategoryItemModelFilterInvalidLimitFailure();
}

// offset
final class CategoryItemModelFilterInvalidOffsetFailure
    extends CategoryItemModelFilterFailure {
  const CategoryItemModelFilterInvalidOffsetFailure();
}

// ascending
final class CategoryItemModelFilterInvalidAscendingFailure
    extends CategoryItemModelFilterFailure {
  const CategoryItemModelFilterInvalidAscendingFailure();
}

// order
final class CategoryItemModelFilterInvalidOrderFailure
    extends CategoryItemModelFilterFailure {
  const CategoryItemModelFilterInvalidOrderFailure();
}

// general

final class CategoryItemModelFilterEmptyFailure
    extends CategoryItemModelFilterFailure {
  const CategoryItemModelFilterEmptyFailure();
}
