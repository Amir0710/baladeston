import 'package:baladeston/domain/category/failure/base_category_failure.dart';

abstract class CategoryModelFailure extends BaseCategoryValidationFailure {
  const CategoryModelFailure();
}

// id
final class CategoryModelInvalidIdFailure extends CategoryModelFailure {
  const CategoryModelInvalidIdFailure();
}

// parent
final class CategoryModelInvalidParentFailure extends CategoryModelFailure {
  const CategoryModelInvalidParentFailure();
}

// title
final class CategoryModelMissingTitleFailure extends CategoryModelFailure {
  const CategoryModelMissingTitleFailure();
}

final class CategoryModelInvalidTitleFailure extends CategoryModelFailure {
  const CategoryModelInvalidTitleFailure();
}

// status
final class CategoryModelInvalidStatusFailure extends CategoryModelFailure {
  const CategoryModelInvalidStatusFailure();
}

// thumbnailUrl
final class CategoryModelInvalidThumbnailUrlFailure
    extends CategoryModelFailure {
  const CategoryModelInvalidThumbnailUrlFailure();
}

// createdAt
final class CategoryModelInvalidCreatedAtFailure extends CategoryModelFailure {
  const CategoryModelInvalidCreatedAtFailure();
}

// lastTransaction
final class CategoryModelInvalidLastTransactionFailure
    extends CategoryModelFailure {
  const CategoryModelInvalidLastTransactionFailure();
}

// ownerId
final class CategoryModelMissingOwnerIdFailure extends CategoryModelFailure {
  const CategoryModelMissingOwnerIdFailure();
}

final class CategoryModelInvalidOwnerIdFailure extends CategoryModelFailure {
  const CategoryModelInvalidOwnerIdFailure();
}
