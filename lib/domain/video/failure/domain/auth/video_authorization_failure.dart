import 'package:baladeston/domain/video/failure/base_video_failure.dart';

abstract class VideoAuthorizationFailure extends BaseVideoAuthFailure {
  const VideoAuthorizationFailure();
}

class VideoAccessForbiddenFailure extends VideoAuthorizationFailure {
  const VideoAccessForbiddenFailure();
}

class VideoAccessAdminRequiredFailure extends VideoAuthorizationFailure {
  const VideoAccessAdminRequiredFailure();
}

class VideoAccessModeratorRequiredFailure extends VideoAuthorizationFailure {
  const VideoAccessModeratorRequiredFailure();
}

class VideoAccessPremiumRequiredFailure extends VideoAuthorizationFailure {
  const VideoAccessPremiumRequiredFailure();
}

class VideoAccessNotOwnerFailure extends VideoAuthorizationFailure {
  const VideoAccessNotOwnerFailure();
}

class VideoAccessResourcePrivateFailure extends VideoAuthorizationFailure {
  const VideoAccessResourcePrivateFailure();
}

class VideoAccessOperationNotAllowedFailure extends VideoAuthorizationFailure {
  const VideoAccessOperationNotAllowedFailure();
}
