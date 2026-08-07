import 'package:baladeston/domain/video/failure/base_video_failure.dart';

abstract class VideoFileFailure
    extends BaseVideoValidationFailure {
  const VideoFileFailure();
}

class VideoFileTooLargeFailure extends VideoFileFailure {
  const VideoFileTooLargeFailure();
}

class VideoFileInvalidFormatFailure
    extends VideoFileFailure {
  const VideoFileInvalidFormatFailure();
}

class VideoFileInvalidIdFailure extends VideoFileFailure {
  const VideoFileInvalidIdFailure();
}
