import 'package:baladeston/domain/video/failure/base_video_failure.dart';

abstract class VideoIdFailure extends BaseVideoValidationFailure {
  const VideoIdFailure();
}

class VideoIdRequiredFailure extends VideoIdFailure {
  const VideoIdRequiredFailure();
}

class VideoIdInvalidFailure extends VideoIdFailure {
  const VideoIdInvalidFailure();
}
