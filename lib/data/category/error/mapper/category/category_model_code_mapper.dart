import 'package:baladeston/data/category/api/error_codes/category/category_entity_error_code.dart'
    as codes;
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/failure/server/code/category_model_failure.dart';

class CategoryModelCodeMapper {
  const CategoryModelCodeMapper();

  static final Map<String, CategoryFailure Function()> _map = {
    //id
    codes.CategoryModelErrorCodes.invalidId: () =>
        const CategoryModelInvalidIdFailure(),

    // parent
    codes.CategoryModelErrorCodes.invalidParent: () =>
        const CategoryModelInvalidParentFailure(),

    // title
    codes.CategoryModelErrorCodes.missingTitle: () =>
        const CategoryModelMissingTitleFailure(),
    codes.CategoryModelErrorCodes.invalidTitle: () =>
        const CategoryModelInvalidTitleFailure(),

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
    codes.CategoryModelErrorCodes.missingOwnerId: () =>
        const CategoryModelMissingOwnerIdFailure(),
    codes.CategoryModelErrorCodes.invalidOwnerId: () =>
        const CategoryModelInvalidOwnerIdFailure(),
  };

  static CategoryFailure? map(String? code) {
    if (code == null) return null;

    final factory = _map[code];
    return factory?.call();
  }
}
