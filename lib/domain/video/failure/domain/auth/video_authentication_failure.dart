
import 'package:baladeston/domain/video/failure/base_video_failure.dart';

abstract class VideoAuthenticationFailure extends BaseVideoAuthFailure {
  const VideoAuthenticationFailure();
}

class VideoAuthInvalidCredentialsFailure extends VideoAuthenticationFailure {
  const VideoAuthInvalidCredentialsFailure();
}

class VideoAuthLoginRequiredFailure extends VideoAuthenticationFailure {
  const VideoAuthLoginRequiredFailure();
}

class VideoAuthInvalidTokenFailure extends VideoAuthenticationFailure {
  const VideoAuthInvalidTokenFailure();
}

class VideoAuthTokenExpiredFailure extends VideoAuthenticationFailure {
  const VideoAuthTokenExpiredFailure();
}

class VideoAuthTokenRevokedFailure extends VideoAuthenticationFailure {
  const VideoAuthTokenRevokedFailure();
}

class VideoAuthRefreshTokenExpiredFailure extends VideoAuthenticationFailure {
  const VideoAuthRefreshTokenExpiredFailure();
}

class VideoAuthRefreshTokenInvalidFailure extends VideoAuthenticationFailure {
  const VideoAuthRefreshTokenInvalidFailure();
}

class VideoAuthAccountDisabledFailure extends VideoAuthenticationFailure {
  const VideoAuthAccountDisabledFailure();
}

class VideoAuthAccountLockedFailure extends VideoAuthenticationFailure {
  const VideoAuthAccountLockedFailure();
}

class VideoAuthEmailNotVerifiedFailure extends VideoAuthenticationFailure {
  const VideoAuthEmailNotVerifiedFailure();
}

class VideoAuthUnauthorizedFailure extends VideoAuthenticationFailure {
  const VideoAuthUnauthorizedFailure();
}
