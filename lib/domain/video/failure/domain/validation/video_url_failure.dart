import 'package:baladeston/domain/video/failure/base_video_failure.dart';

abstract class VideoUrlFailure extends BaseVideoValidationFailure {
  const VideoUrlFailure();
}

class VideoUrlMissing extends VideoUrlFailure {
  const VideoUrlMissing();
}

class VideoUrlInvalidFormatFailure extends VideoUrlFailure {
  const VideoUrlInvalidFormatFailure();
}

class VideoUrlUnsupportedSchemeFailure extends VideoUrlFailure {
  const VideoUrlUnsupportedSchemeFailure();
}

class VideoUrlStructuralFailure extends VideoUrlFailure {
  const VideoUrlStructuralFailure();
}

class VideoUrlInvalidLengthFailure extends VideoUrlFailure {
  const VideoUrlInvalidLengthFailure();
}
