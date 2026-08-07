
import 'package:baladeston/data/video/api/error_codes/auth/video_access_error_code.dart' as codes;
import 'package:baladeston/domain/video/failure/base_video_failure.dart';
import 'package:baladeston/domain/video/failure/domain/auth/video_authorization_failure.dart';

class VideoAccessCodeMapper {
  const VideoAccessCodeMapper();

  static final Map<String, VideoFailure Function()> _map = {
    codes.VideoAccessErrorCodes.forbidden: () =>
        const VideoAccessForbiddenFailure() as VideoFailure,
    codes.VideoAccessErrorCodes.adminRequired: () =>
        const VideoAccessAdminRequiredFailure() as VideoFailure,
    codes.VideoAccessErrorCodes.moderatorRequired: () =>
        const VideoAccessModeratorRequiredFailure() as VideoFailure,
    codes.VideoAccessErrorCodes.premiumRequired: () =>
        const VideoAccessPremiumRequiredFailure() as VideoFailure,
    codes.VideoAccessErrorCodes.notOwner: () =>
        const VideoAccessNotOwnerFailure() as VideoFailure,
    codes.VideoAccessErrorCodes.resourcePrivate: () =>
        const VideoAccessResourcePrivateFailure() as VideoFailure,
    codes.VideoAccessErrorCodes.operationNotAllowed: () =>
        const VideoAccessOperationNotAllowedFailure() as VideoFailure,
  };

  static VideoFailure? map(String? code) {
    if (code == null) return null;
    return _map[code]?.call();
  }
}
