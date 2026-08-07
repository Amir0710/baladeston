import 'package:baladeston/data/category/api/error_codes/auth/category_access_error_code.dart'
    as codes;
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/failure/domain/auth/category_authorization_failure.dart';

class CategoryAccessCodeMapper {
  const CategoryAccessCodeMapper();

  static final Map<String, CategoryFailure Function()> _map = {
    codes.CategoryAccessErrorCodes.forbidden: () =>
        const AccessForbiddenFailure() as CategoryFailure,
    codes.CategoryAccessErrorCodes.adminRequired: () =>
        const AccessAdminRequiredFailure() as CategoryFailure,
    codes.CategoryAccessErrorCodes.moderatorRequired: () =>
        const AccessModeratorRequiredFailure() as CategoryFailure,
    codes.CategoryAccessErrorCodes.premiumRequired: () =>
        const AccessPremiumRequiredFailure() as CategoryFailure,
    codes.CategoryAccessErrorCodes.notOwner: () =>
        const AccessNotOwnerFailure() as CategoryFailure,
    codes.CategoryAccessErrorCodes.resourcePrivate: () =>
        const AccessResourcePrivateFailure() as CategoryFailure,
    codes.CategoryAccessErrorCodes.operationNotAllowed: () =>
        const AccessOperationNotAllowedFailure() as CategoryFailure,
  };

  static CategoryFailure? map(String? code) {
    if (code == null) return null;
    return _map[code]?.call();
  }
}
