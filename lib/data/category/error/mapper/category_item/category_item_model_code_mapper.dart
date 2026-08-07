import 'package:baladeston/data/category/api/error_codes/category_item/category_item_entity_error_codes.dart' as codes;
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/failure/server/code/category_item_model_failure.dart';

class CategoryItemModelCodeMapper {
  const CategoryItemModelCodeMapper();

  static final Map<String, CategoryFailure Function()> _map = {
    // id
    codes.CategoryItemModelErrorCodes.invalidId: () =>
    const CategoryItemModelInvalidIdFailure(),

    // status
    codes.CategoryItemModelErrorCodes.invalidStatus: () =>
    const CategoryItemModelInvalidStatusFailure(),

    // adderId
    codes.CategoryItemModelErrorCodes.missingAdderId: () =>
    const CategoryItemModelMissingAdderIdFailure(),
    codes.CategoryItemModelErrorCodes.invalidAdderId: () =>
    const CategoryItemModelInvalidAdderIdFailure(),

    // collectionId
    codes.CategoryItemModelErrorCodes.missingCollectionId: () =>
    const CategoryItemModelMissingCollectionIdFailure(),
    codes.CategoryItemModelErrorCodes.invalidCollectionId: () =>
    const CategoryItemModelInvalidCollectionIdFailure(),

    // categoryId
    codes.CategoryItemModelErrorCodes.missingCategoryId: () =>
    const CategoryItemModelMissingCategoryIdFailure(),
    codes.CategoryItemModelErrorCodes.invalidCategoryId: () =>
    const CategoryItemModelInvalidCategoryIdFailure(),

    // addedAt
    codes.CategoryItemModelErrorCodes.missingAddedAt: () =>
    const CategoryItemModelMissingAddedAtFailure(),
    codes.CategoryItemModelErrorCodes.invalidAddedAt: () =>
    const CategoryItemModelInvalidAddedAtFailure(),

    // lastTransaction
    codes.CategoryItemModelErrorCodes.missingLastTransaction: () =>
    const CategoryItemModelMissingLastTransactionFailure(),
    codes.CategoryItemModelErrorCodes.invalidLastTransaction: () =>
    const CategoryItemModelInvalidLastTransactionFailure(),
  };

  static CategoryFailure? map(String? code) {
    if (code == null) return null;

    final factory = _map[code];
    return factory?.call();
  }
}
