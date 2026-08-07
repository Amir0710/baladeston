import 'package:baladeston/domain/video/failure/base_video_failure.dart';

abstract class VideoImageUrlFailure extends BaseVideoValidationFailure {
  const VideoImageUrlFailure();
}

class VideoImageUrlEmptyFailure extends VideoImageUrlFailure {
  const VideoImageUrlEmptyFailure();
}

class VideoImageUrlInvalidFormatFailure extends VideoImageUrlFailure {
  const VideoImageUrlInvalidFormatFailure();
}

class VideoImageUrlUnsupportedSchemeFailure extends VideoImageUrlFailure {
  const VideoImageUrlUnsupportedSchemeFailure();
}

class VideoImageUrlUnauthorizedHostFailure extends VideoImageUrlFailure {
  const VideoImageUrlUnauthorizedHostFailure();
}

class VideoImageUrlInvalidIdFailure extends VideoImageUrlFailure {
  const VideoImageUrlInvalidIdFailure();
}
