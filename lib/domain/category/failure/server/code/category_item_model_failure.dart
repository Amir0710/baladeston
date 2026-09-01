import 'package:baladeston/domain/category/failure/base_category_failure.dart';

abstract class CategoryItemModelFailure
    extends BaseCategoryValidationFailure {
  const CategoryItemModelFailure();
}

// id
final class CategoryItemModelInvalidIdFailure
    extends CategoryItemModelFailure {
  const CategoryItemModelInvalidIdFailure();
}

// title
final class CategoryItemModelInvalidTitleFailure
    extends CategoryItemModelFailure {
  const CategoryItemModelInvalidTitleFailure();
}

// avgRate
final class CategoryItemModelInvalidAvgRateFailure
    extends CategoryItemModelFailure {
  const CategoryItemModelInvalidAvgRateFailure();
}

// rateCount
final class CategoryItemModelInvalidRateCountFailure
    extends CategoryItemModelFailure {
  const CategoryItemModelInvalidRateCountFailure();
}

// thumbnailUrl
final class CategoryItemModelInvalidThumbnailUrlFailure
    extends CategoryItemModelFailure {
  const CategoryItemModelInvalidThumbnailUrlFailure();
}

// status
final class CategoryItemModelInvalidStatusFailure
    extends CategoryItemModelFailure {
  const CategoryItemModelInvalidStatusFailure();
}

// addedAt
final class CategoryItemModelInvalidAddedAtFailure
    extends CategoryItemModelFailure {
  const CategoryItemModelInvalidAddedAtFailure();
}

// lastTransaction
final class CategoryItemModelInvalidLastTransactionFailure
    extends CategoryItemModelFailure {
  const CategoryItemModelInvalidLastTransactionFailure();
}

// adderId
final class CategoryItemModelInvalidAdderIdFailure
    extends CategoryItemModelFailure {
  const CategoryItemModelInvalidAdderIdFailure();
}

// collectionId
final class CategoryItemModelInvalidCollectionIdFailure
    extends CategoryItemModelFailure {
  const CategoryItemModelInvalidCollectionIdFailure();
}

// categoryId
final class CategoryItemModelInvalidCategoryIdFailure
    extends CategoryItemModelFailure {
  const CategoryItemModelInvalidCategoryIdFailure();
}

// missing
final class CategoryItemModelMissingFieldFailure
    extends CategoryItemModelFailure {
  const CategoryItemModelMissingFieldFailure();
}
