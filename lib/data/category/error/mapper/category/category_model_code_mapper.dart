import 'package:baladeston/data/category/api/error_codes/category/category_entity_error_code.dart'
as codes;
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/failure/server/code/category_model_failure.dart';

class CategoryModelCodeMapper {
  const CategoryModelCodeMapper();

  static final Map<String, CategoryFailure Function()> _map = {
    // id
    codes.CategoryModelErrorCodes.invalidId: () =>
    const CategoryModelInvalidIdFailure(),

    // type
    codes.CategoryModelErrorCodes.invalidType: () =>
    const CategoryModelInvalidTypeFailure(),

    // parent
    codes.CategoryModelErrorCodes.invalidParent: () =>
    const CategoryModelInvalidParentFailure(),

    // avgRate
    codes.CategoryModelErrorCodes.invalidAvgRate: () =>
    const CategoryModelInvalidAvgRateFailure(),

    // rageCount
    codes.CategoryModelErrorCodes.invalidRageCount: () =>
    const CategoryModelInvalidRageCountFailure(),

    // title
    codes.CategoryModelErrorCodes.invalidTitle: () =>
    const CategoryModelInvalidTitleFailure(),

    // description
    codes.CategoryModelErrorCodes.invalidDescription: () =>
    const CategoryModelInvalidDescriptionFailure(),

    // status
    codes.CategoryModelErrorCodes.invalidStatus: () =>
    const CategoryModelInvalidStatusFailure(),

    // thumbnailUrl
    codes.CategoryModelErrorCodes.invalidThumbnailUrl: () =>
    const CategoryModelInvalidThumbnailUrlFailure(),

    // createdAt
    codes.CategoryModelErrorCodes.invalidCreatedAt: () =>
    const CategoryModelInvalidCreatedAtFailure(),

    // lastTransaction
    codes.CategoryModelErrorCodes.invalidLastTransaction: () =>
    const CategoryModelInvalidLastTransactionFailure(),

    // ownerId
    codes.CategoryModelErrorCodes.invalidOwnerId: () =>
    const CategoryModelInvalidOwnerIdFailure(),

    // missing
    codes.CategoryModelErrorCodes.missingField: () =>
    const CategoryModelMissingFieldFailure(),
  };

  static CategoryFailure? map(String? code) {
    if (code == null) return null;

    final factory = _map[code];
    return factory?.call();
  }
}
