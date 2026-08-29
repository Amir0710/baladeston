import 'package:baladeston/data/discount/api/error_codes/auth/discount_auth_error_code.dart'
    as codes;
import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';
import 'package:baladeston/domain/discount/failure/domain/auth/discount_authentication_failure.dart';

class DiscountAuthCodeMapper {
  const DiscountAuthCodeMapper();

  static final Map<String, DiscountFailure Function()> _map = {
    codes.DiscountAuthErrorCode.unauthorized: () =>
        const DiscountAuthUnauthorizedFailure() as DiscountFailure,
    codes.DiscountAuthErrorCode.loginRequired: () =>
        const DiscountAuthLoginRequiredFailure() as DiscountFailure,
    codes.DiscountAuthErrorCode.invalidCredentials: () =>
        const DiscountAuthInvalidCredentialsFailure() as DiscountFailure,
    codes.DiscountAuthErrorCode.invalidToken: () =>
        const DiscountAuthInvalidTokenFailure() as DiscountFailure,
    codes.DiscountAuthErrorCode.tokenExpired: () =>
        const DiscountAuthTokenExpiredFailure() as DiscountFailure,
    codes.DiscountAuthErrorCode.tokenRevoked: () =>
        const DiscountAuthTokenRevokedFailure() as DiscountFailure,
    codes.DiscountAuthErrorCode.refreshTokenExpired: () =>
        const DiscountAuthRefreshTokenExpiredFailure() as DiscountFailure,
    codes.DiscountAuthErrorCode.refreshTokenInvalid: () =>
        const DiscountAuthRefreshTokenInvalidFailure() as DiscountFailure,
    codes.DiscountAuthErrorCode.accountDisabled: () =>
        const DiscountAuthAccountDisabledFailure() as DiscountFailure,
    codes.DiscountAuthErrorCode.accountLocked: () =>
        const DiscountAuthAccountLockedFailure() as DiscountFailure,
    codes.DiscountAuthErrorCode.emailNotVerified: () =>
        const DiscountAuthEmailNotVerifiedFailure() as DiscountFailure,
  };

  static DiscountFailure? map(String? code) {
    if (code == null) return null;
    return _map[code]?.call();
  }
}
