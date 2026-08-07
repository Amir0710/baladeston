import 'package:baladeston/data/video/api/error_codes/video/video_image_file_error_codes.dart'
    as codes;
import 'package:baladeston/domain/video/failure/base_video_failure.dart';
import 'package:baladeston/domain/video/failure/domain/validation/video_image_file_failure.dart';

class VideoImageFileCodeMapper {
  const VideoImageFileCodeMapper();

  static final Map<String, VideoFailure Function()> _map = {
    codes.VideoImageFileErrorCodes.imageFileTooLarge: () =>
        const VideoImageFileTooLargeFailure(),
    codes.VideoImageFileErrorCodes.imageFileInvalidFormat: () =>
        const VideoImageFileInvalidFormatFailure(),
    codes.VideoImageFileErrorCodes.imageFileInvalidId: () =>
        const VideoImageFileInvalidIdFailure(),
  };

  static VideoFailure? map(String? code) {
    if (code == null) return null;

    final factory = _map[code];
    return factory?.call();
  }
}
