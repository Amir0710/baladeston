
import 'package:baladeston/data/video/api/error_codes/auth/video_auth_error_code.dart' as codes;
import 'package:baladeston/domain/video/failure/base_video_failure.dart';
import 'package:baladeston/domain/video/failure/domain/auth/video_authentication_failure.dart';

class VideoAuthCodeMapper {
  const VideoAuthCodeMapper();

  static final Map<String, VideoFailure Function()> _map = {
    codes.VideoAuthErrorCodes.unauthorized:
        () => const VideoAuthUnauthorizedFailure() as VideoFailure,

    codes.VideoAuthErrorCodes.loginRequired:
        () => const VideoAuthLoginRequiredFailure() as VideoFailure,

    codes.VideoAuthErrorCodes.invalidCredentials:
        () => const VideoAuthInvalidCredentialsFailure() as VideoFailure,

    codes.VideoAuthErrorCodes.invalidToken:
        () => const VideoAuthInvalidTokenFailure() as VideoFailure,

    codes.VideoAuthErrorCodes.tokenExpired:
        () => const VideoAuthTokenExpiredFailure() as VideoFailure,

    codes.VideoAuthErrorCodes.tokenRevoked:
        () => const VideoAuthTokenRevokedFailure() as VideoFailure,

    codes.VideoAuthErrorCodes.refreshTokenExpired:
        () => const VideoAuthRefreshTokenExpiredFailure() as VideoFailure,

    codes.VideoAuthErrorCodes.refreshTokenInvalid:
        () => const VideoAuthRefreshTokenInvalidFailure() as VideoFailure,

    codes.VideoAuthErrorCodes.accountDisabled:
        () => const VideoAuthAccountDisabledFailure() as VideoFailure,

    codes.VideoAuthErrorCodes.accountLocked:
        () => const VideoAuthAccountLockedFailure() as VideoFailure,

    codes.VideoAuthErrorCodes.emailNotVerified:
        () => const VideoAuthEmailNotVerifiedFailure() as VideoFailure,
  };

  static VideoFailure? map(String? code) {
    if (code == null) return null;
    return _map[code]?.call();
  }
}


