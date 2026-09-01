import 'package:baladeston/data/category/api/error_codes/category_item/category_item_entity_error_codes.dart' as codes;
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/failure/server/code/category_item_model_failure.dart';

class CategoryItemModelCodeMapper {
  const CategoryItemModelCodeMapper();

  static final Map<String, CategoryFailure Function()> _map = {
    // id
    codes.CategoryItemModelErrorCodes.invalidId: () =>
    const CategoryItemModelInvalidIdFailure(),

    // title
    codes.CategoryItemModelErrorCodes.invalidTitle: () =>
    const CategoryItemModelInvalidTitleFailure(),

    // avgRate
    codes.CategoryItemModelErrorCodes.invalidAvgRate: () =>
    const CategoryItemModelInvalidAvgRateFailure(),

    // rateCount
    codes.CategoryItemModelErrorCodes.invalidRateCount: () =>
    const CategoryItemModelInvalidRateCountFailure(),

    // thumbnailUrl
    codes.CategoryItemModelErrorCodes.invalidThumbnailUrl: () =>
    const CategoryItemModelInvalidThumbnailUrlFailure(),

    // status
    codes.CategoryItemModelErrorCodes.invalidStatus: () =>
    const CategoryItemModelInvalidStatusFailure(),

    // addedAt
    codes.CategoryItemModelErrorCodes.invalidAddedAt: () =>
    const CategoryItemModelInvalidAddedAtFailure(),

    // lastTransaction
    codes.CategoryItemModelErrorCodes.invalidLastTransaction: () =>
    const CategoryItemModelInvalidLastTransactionFailure(),

    // adderId
    codes.CategoryItemModelErrorCodes.invalidAdderId: () =>
    const CategoryItemModelInvalidAdderIdFailure(),

    // collectionId
    codes.CategoryItemModelErrorCodes.invalidCollectionId: () =>
    const CategoryItemModelInvalidCollectionIdFailure(),

    // categoryId
    codes.CategoryItemModelErrorCodes.invalidCategoryId: () =>
    const CategoryItemModelInvalidCategoryIdFailure(),

    // missing
    codes.CategoryItemModelErrorCodes.missingField: () =>
    const CategoryItemModelMissingFieldFailure(),
  };

  static CategoryFailure? map(String? code) {
    if (code == null) return null;
    return _map[code]?.call();
  }
}
