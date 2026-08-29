import 'package:baladeston/domain/category/failure/base_category_failure.dart';

abstract class CategoryModelFailure extends BaseCategoryValidationFailure {
  const CategoryModelFailure();
}

// id
final class CategoryModelInvalidIdFailure extends CategoryModelFailure {
  const CategoryModelInvalidIdFailure();
}

// type
final class CategoryModelInvalidTypeFailure extends CategoryModelFailure {
  const CategoryModelInvalidTypeFailure();
}

// parent
final class CategoryModelInvalidParentFailure extends CategoryModelFailure {
  const CategoryModelInvalidParentFailure();
}

// avgRate
final class CategoryModelInvalidAvgRateFailure extends CategoryModelFailure {
  const CategoryModelInvalidAvgRateFailure();
}

// rageCount
final class CategoryModelInvalidRageCountFailure extends CategoryModelFailure {
  const CategoryModelInvalidRageCountFailure();
}

// title
final class CategoryModelInvalidTitleFailure extends CategoryModelFailure {
  const CategoryModelInvalidTitleFailure();
}

// description
final class CategoryModelInvalidDescriptionFailure extends CategoryModelFailure {
  const CategoryModelInvalidDescriptionFailure();
}

// status
final class CategoryModelInvalidStatusFailure extends CategoryModelFailure {
  const CategoryModelInvalidStatusFailure();
}

// thumbnailUrl
final class CategoryModelInvalidThumbnailUrlFailure extends CategoryModelFailure {
  const CategoryModelInvalidThumbnailUrlFailure();
}

// createdAt
final class CategoryModelInvalidCreatedAtFailure extends CategoryModelFailure {
  const CategoryModelInvalidCreatedAtFailure();
}

// lastTransaction
final class CategoryModelInvalidLastTransactionFailure extends CategoryModelFailure {
  const CategoryModelInvalidLastTransactionFailure();
}

// ownerId
final class CategoryModelInvalidOwnerIdFailure extends CategoryModelFailure {
  const CategoryModelInvalidOwnerIdFailure();
}

// missing
final class CategoryModelMissingFieldFailure extends CategoryModelFailure {
  const CategoryModelMissingFieldFailure();
}
