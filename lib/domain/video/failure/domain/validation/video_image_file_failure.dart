import 'package:baladeston/domain/video/failure/base_video_failure.dart';

abstract class VideoImageFileFailure
    extends BaseVideoValidationFailure {
  const VideoImageFileFailure();
}

class VideoImageFileTooLargeFailure extends VideoImageFileFailure {
  const VideoImageFileTooLargeFailure();
}

class VideoImageFileInvalidFormatFailure
    extends VideoImageFileFailure {
  const VideoImageFileInvalidFormatFailure();
}

class VideoImageFileInvalidContentFailure extends VideoImageFileFailure {
  const VideoImageFileInvalidContentFailure();
}
