import 'package:baladeston/data/category/api/error_codes/auth/category_auth_error_code.dart'
    as codes;
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/failure/domain/auth/category_authentication_failure.dart';

class CategoryAuthCodeMapper {
  const CategoryAuthCodeMapper();

  static final Map<String, CategoryFailure Function()> _map = {
    codes.CategoryAuthErrorCodes.unauthorized: () =>
        const CategoryAuthUnauthorizedFailure() as CategoryFailure,
    codes.CategoryAuthErrorCodes.loginRequired: () =>
        const CategoryAuthLoginRequiredFailure() as CategoryFailure,
    codes.CategoryAuthErrorCodes.invalidCredentials: () =>
        const CategoryAuthInvalidCredentialsFailure() as CategoryFailure,
    codes.CategoryAuthErrorCodes.invalidToken: () =>
        const CategoryAuthInvalidTokenFailure() as CategoryFailure,
    codes.CategoryAuthErrorCodes.tokenExpired: () =>
        const CategoryAuthTokenExpiredFailure() as CategoryFailure,
    codes.CategoryAuthErrorCodes.tokenRevoked: () =>
        const CategoryAuthTokenRevokedFailure() as CategoryFailure,
    codes.CategoryAuthErrorCodes.refreshTokenExpired: () =>
        const CategoryAuthRefreshTokenExpiredFailure() as CategoryFailure,
    codes.CategoryAuthErrorCodes.refreshTokenInvalid: () =>
        const CategoryAuthRefreshTokenInvalidFailure() as CategoryFailure,
    codes.CategoryAuthErrorCodes.accountDisabled: () =>
        const CategoryAuthAccountDisabledFailure() as CategoryFailure,
    codes.CategoryAuthErrorCodes.accountLocked: () =>
        const CategoryAuthAccountLockedFailure() as CategoryFailure,
    codes.CategoryAuthErrorCodes.emailNotVerified: () =>
        const CategoryAuthEmailNotVerifiedFailure() as CategoryFailure,
  };

  static CategoryFailure? map(String? code) {
    if (code == null) return null;
    return _map[code]?.call();
  }
}
