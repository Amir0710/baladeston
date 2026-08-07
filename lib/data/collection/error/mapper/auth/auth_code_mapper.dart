import 'package:baladeston/data/collection/api/error_codes/auth/collection_auth_error_code.dart'
    as codes;
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/failure/domain/auth/collection_authentication_failure.dart';

class CollectionAuthCodeMapper {
  const CollectionAuthCodeMapper();

  static final Map<String, CollectionFailure Function()> _map = {
    codes.CollectionAuthErrorCodes.unauthorized: () =>
        const CollectionAuthUnauthorizedFailure() as CollectionFailure,
    codes.CollectionAuthErrorCodes.loginRequired: () =>
        const CollectionAuthLoginRequiredFailure() as CollectionFailure,
    codes.CollectionAuthErrorCodes.invalidCredentials: () =>
        const CollectionAuthInvalidCredentialsFailure() as CollectionFailure,
    codes.CollectionAuthErrorCodes.invalidToken: () =>
        const CollectionAuthInvalidTokenFailure() as CollectionFailure,
    codes.CollectionAuthErrorCodes.tokenExpired: () =>
        const CollectionAuthTokenExpiredFailure() as CollectionFailure,
    codes.CollectionAuthErrorCodes.tokenRevoked: () =>
        const CollectionAuthTokenRevokedFailure() as CollectionFailure,
    codes.CollectionAuthErrorCodes.refreshTokenExpired: () =>
        const CollectionAuthRefreshTokenExpiredFailure() as CollectionFailure,
    codes.CollectionAuthErrorCodes.refreshTokenInvalid: () =>
        const CollectionAuthRefreshTokenInvalidFailure() as CollectionFailure,
    codes.CollectionAuthErrorCodes.accountDisabled: () =>
        const CollectionAuthAccountDisabledFailure() as CollectionFailure,
    codes.CollectionAuthErrorCodes.accountLocked: () =>
        const CollectionAuthAccountLockedFailure() as CollectionFailure,
    codes.CollectionAuthErrorCodes.emailNotVerified: () =>
        const CollectionAuthEmailNotVerifiedFailure() as CollectionFailure,
  };

  static CollectionFailure? map(String? code) {
    if (code == null) return null;
    return _map[code]?.call();
  }
}
