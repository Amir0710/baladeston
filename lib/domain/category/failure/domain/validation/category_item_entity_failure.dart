import 'package:baladeston/domain/category/failure/base_category_failure.dart';

abstract class CategoryItemEntityFailure
    extends BaseCategoryValidationFailure {
  const CategoryItemEntityFailure();
}

// id
final class CategoryItemEntityInvalidIdFailure
    extends CategoryItemEntityFailure {
  const CategoryItemEntityInvalidIdFailure();
}

// status
final class CategoryItemEntityInvalidStatusFailure
    extends CategoryItemEntityFailure {
  const CategoryItemEntityInvalidStatusFailure();
}

// adderId
final class CategoryItemEntityMissingAdderIdFailure
    extends CategoryItemEntityFailure {
  const CategoryItemEntityMissingAdderIdFailure();
}

final class CategoryItemEntityInvalidAdderIdFailure
    extends CategoryItemEntityFailure {
  const CategoryItemEntityInvalidAdderIdFailure();
}

// collectionId
final class CategoryItemEntityMissingCollectionIdFailure
    extends CategoryItemEntityFailure {
  const CategoryItemEntityMissingCollectionIdFailure();
}

final class CategoryItemEntityInvalidCollectionIdFailure
    extends CategoryItemEntityFailure {
  const CategoryItemEntityInvalidCollectionIdFailure();
}

// categoryId
final class CategoryItemEntityMissingCategoryIdFailure
    extends CategoryItemEntityFailure {
  const CategoryItemEntityMissingCategoryIdFailure();
}

final class CategoryItemEntityInvalidCategoryIdFailure
    extends CategoryItemEntityFailure {
  const CategoryItemEntityInvalidCategoryIdFailure();
}

// addedAt
final class CategoryItemEntityMissingAddedAtFailure
    extends CategoryItemEntityFailure {
  const CategoryItemEntityMissingAddedAtFailure();
}

final class CategoryItemEntityInvalidAddedAtFailure
    extends CategoryItemEntityFailure {
  const CategoryItemEntityInvalidAddedAtFailure();
}

// lastTransaction
final class CategoryItemEntityMissingLastTransactionFailure
    extends CategoryItemEntityFailure {
  const CategoryItemEntityMissingLastTransactionFailure();
}

final class CategoryItemEntityInvalidLastTransactionFailure
    extends CategoryItemEntityFailure {
  const CategoryItemEntityInvalidLastTransactionFailure();
}
