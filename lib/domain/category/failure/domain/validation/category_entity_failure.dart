import 'package:baladeston/domain/category/failure/base_category_failure.dart';

abstract class CategoryEntityFailure extends BaseCategoryValidationFailure {
  const CategoryEntityFailure();
}

// id
final class CategoryEntityInvalidIdFailure extends CategoryEntityFailure {
  const CategoryEntityInvalidIdFailure();
}

// parent
final class CategoryEntityInvalidParentFailure extends CategoryEntityFailure {
  const CategoryEntityInvalidParentFailure();
}

// title
final class CategoryEntityMissingTitleFailure extends CategoryEntityFailure {
  const CategoryEntityMissingTitleFailure();
}

final class CategoryEntityInvalidTitleFailure extends CategoryEntityFailure {
  const CategoryEntityInvalidTitleFailure();
}

// status
final class CategoryEntityInvalidStatusFailure extends CategoryEntityFailure {
  const CategoryEntityInvalidStatusFailure();
}

// thumbnailUrl
final class CategoryEntityInvalidThumbnailUrlFailure
    extends CategoryEntityFailure {
  const CategoryEntityInvalidThumbnailUrlFailure();
}

// createdAt
final class CategoryEntityInvalidCreatedAtFailure extends CategoryEntityFailure {
  const CategoryEntityInvalidCreatedAtFailure();
}

// lastTransaction
final class CategoryEntityInvalidLastTransactionFailure
    extends CategoryEntityFailure {
  const CategoryEntityInvalidLastTransactionFailure();
}

// ownerId
final class CategoryEntityMissingOwnerIdFailure extends CategoryEntityFailure {
  const CategoryEntityMissingOwnerIdFailure();
}

final class CategoryEntityInvalidOwnerIdFailure extends CategoryEntityFailure {
  const CategoryEntityInvalidOwnerIdFailure();
}
