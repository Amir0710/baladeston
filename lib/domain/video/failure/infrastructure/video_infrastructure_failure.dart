import 'package:baladeston/domain/video/failure/base_video_failure.dart';

abstract class VideoInfrastructureFailure
    extends BaseVideoInfrastructureFailure {
  const VideoInfrastructureFailure();
}

class VideoNetworkFailure extends VideoInfrastructureFailure {
  const VideoNetworkFailure();
}

class VideoTimeoutFailure extends VideoInfrastructureFailure {
  const VideoTimeoutFailure();
}

class VideoServerFailure extends VideoInfrastructureFailure {
  const VideoServerFailure();
}

class VideoServerUnavailableFailure extends VideoInfrastructureFailure {
  const VideoServerUnavailableFailure();
}

class VideoBadRequestFailure extends VideoInfrastructureFailure {
  const VideoBadRequestFailure();
}

class VideoUnauthorizedInfrastructureFailure
    extends VideoInfrastructureFailure {
  const VideoUnauthorizedInfrastructureFailure();
}

class VideoForbiddenInfrastructureFailure extends VideoInfrastructureFailure {
  const VideoForbiddenInfrastructureFailure();
}

class VideoConflictFailure extends VideoInfrastructureFailure {
  const VideoConflictFailure();
}

class VideoRateLimitFailure extends VideoInfrastructureFailure {
  const VideoRateLimitFailure();
}

class VideoInvalidDataFailure extends VideoInfrastructureFailure {
  const VideoInvalidDataFailure();
}
