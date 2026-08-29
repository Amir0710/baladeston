import 'package:baladeston/domain/video/failure/base_video_failure.dart';

abstract class VideoImageUrlFailure extends BaseVideoValidationFailure {
  const VideoImageUrlFailure();
}

// image url

class VideoImageUrlInvalidFormatFailure extends VideoImageUrlFailure {
  const VideoImageUrlInvalidFormatFailure();
}

class VideoImageUrlUnsupportedSchemeFailure extends VideoImageUrlFailure {
  const VideoImageUrlUnsupportedSchemeFailure();
}

class VideoImageUrlStructuralFailure extends VideoImageUrlFailure {
  const VideoImageUrlStructuralFailure();
}

class VideoImageUrlInvalidLengthFailure extends VideoImageUrlFailure {
  const VideoImageUrlInvalidLengthFailure();
}
