import 'package:baladeston/data/video/api/error_codes/video/video_file_error_codes.dart'
    as codes;
import 'package:baladeston/domain/video/failure/base_video_failure.dart';
import 'package:baladeston/domain/video/failure/domain/validation/video_file_failure.dart';

class VideoFileCodeMapper {
  const VideoFileCodeMapper();

  static final Map<String, VideoFailure Function()> _map = {
    codes.VideoFileErrorCodes.fileTooLarge: () =>
        const VideoFileTooLargeFailure(),
    codes.VideoFileErrorCodes.fileInvalidFormat: () =>
        const VideoFileInvalidFormatFailure(),
    codes.VideoFileErrorCodes.fileInvalidId: () =>
        const VideoFileInvalidIdFailure(),
  };

  static VideoFailure? map(String? code) {
    if (code == null) return null;

    final factory = _map[code];
    return factory?.call();
  }
}
