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

// status
final class CategoryItemModelInvalidStatusFailure
    extends CategoryItemModelFailure {
  const CategoryItemModelInvalidStatusFailure();
}

// adderId
final class CategoryItemModelMissingAdderIdFailure
    extends CategoryItemModelFailure {
  const CategoryItemModelMissingAdderIdFailure();
}

final class CategoryItemModelInvalidAdderIdFailure
    extends CategoryItemModelFailure {
  const CategoryItemModelInvalidAdderIdFailure();
}

// collectionId
final class CategoryItemModelMissingCollectionIdFailure
    extends CategoryItemModelFailure {
  const CategoryItemModelMissingCollectionIdFailure();
}

final class CategoryItemModelInvalidCollectionIdFailure
    extends CategoryItemModelFailure {
  const CategoryItemModelInvalidCollectionIdFailure();
}

// categoryId
final class CategoryItemModelMissingCategoryIdFailure
    extends CategoryItemModelFailure {
  const CategoryItemModelMissingCategoryIdFailure();
}

final class CategoryItemModelInvalidCategoryIdFailure
    extends CategoryItemModelFailure {
  const CategoryItemModelInvalidCategoryIdFailure();
}

// addedAt
final class CategoryItemModelMissingAddedAtFailure
    extends CategoryItemModelFailure {
  const CategoryItemModelMissingAddedAtFailure();
}

final class CategoryItemModelInvalidAddedAtFailure
    extends CategoryItemModelFailure {
  const CategoryItemModelInvalidAddedAtFailure();
}

// lastTransaction
final class CategoryItemModelMissingLastTransactionFailure
    extends CategoryItemModelFailure {
  const CategoryItemModelMissingLastTransactionFailure();
}

final class CategoryItemModelInvalidLastTransactionFailure
    extends CategoryItemModelFailure {
  const CategoryItemModelInvalidLastTransactionFailure();
}
