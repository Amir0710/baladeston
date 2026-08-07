import 'package:baladeston/domain/video/failure/base_video_failure.dart';

abstract class VideoUrlFailure extends BaseVideoValidationFailure {
  const VideoUrlFailure();
}

class VideoUrlEmptyFailure extends VideoUrlFailure {
  const VideoUrlEmptyFailure();
}

class VideoUrlInvalidFormatFailure extends VideoUrlFailure {
  const VideoUrlInvalidFormatFailure();
}

class VideoUrlUnsupportedSchemeFailure extends VideoUrlFailure {
  const VideoUrlUnsupportedSchemeFailure();
}

class VideoUrlUnauthorizedHostFailure extends VideoUrlFailure {
  const VideoUrlUnauthorizedHostFailure();
}
