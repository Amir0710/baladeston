
import 'package:baladeston/data/comment/api/error_codes/auth/comment_auth_error_code.dart' as codes;
import 'package:baladeston/domain/comment/failure/base_comment_failure.dart';
import 'package:baladeston/domain/comment/failure/domain/auth/comment_authentication_failure.dart';

class CommentAuthCodeMapper {
  const CommentAuthCodeMapper();

  static final Map<String, CommentFailure Function()> _map = {
    codes.CommentAuthErrorCodes.unauthorized: () =>
        const CommentAuthUnauthorizedFailure() as CommentFailure,
    codes.CommentAuthErrorCodes.loginRequired: () =>
        const CommentAuthLoginRequiredFailure() as CommentFailure,
    codes.CommentAuthErrorCodes.invalidCredentials: () =>
        const CommentAuthInvalidCredentialsFailure() as CommentFailure,
    codes.CommentAuthErrorCodes.invalidToken: () =>
        const CommentAuthInvalidTokenFailure() as CommentFailure,
    codes.CommentAuthErrorCodes.tokenExpired: () =>
        const CommentAuthTokenExpiredFailure() as CommentFailure,
    codes.CommentAuthErrorCodes.tokenRevoked: () =>
        const CommentAuthTokenRevokedFailure() as CommentFailure,
    codes.CommentAuthErrorCodes.refreshTokenExpired: () =>
        const CommentAuthRefreshTokenExpiredFailure() as CommentFailure,
    codes.CommentAuthErrorCodes.refreshTokenInvalid: () =>
        const CommentAuthRefreshTokenInvalidFailure() as CommentFailure,
    codes.CommentAuthErrorCodes.accountDisabled: () =>
        const CommentAuthAccountDisabledFailure() as CommentFailure,
    codes.CommentAuthErrorCodes.accountLocked: () =>
        const CommentAuthAccountLockedFailure() as CommentFailure,
    codes.CommentAuthErrorCodes.emailNotVerified: () =>
        const CommentAuthEmailNotVerifiedFailure() as CommentFailure,
  };

  static CommentFailure? map(String? code) {
    if (code == null) return null;
    return _map[code]?.call();
  }
}
