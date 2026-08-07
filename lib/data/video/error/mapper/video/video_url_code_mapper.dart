import 'package:baladeston/data/video/api/error_codes/video/video_url_error_codes.dart'
as codes;
import 'package:baladeston/domain/video/failure/base_video_failure.dart';
import 'package:baladeston/domain/video/failure/domain/validation/video_url_failure.dart';

class VideoUrlCodeMapper {
  const VideoUrlCodeMapper();

  static final Map<String, VideoFailure Function()> _map = {
    codes.VideoUrlErrorCodes.empty: () => const VideoUrlEmptyFailure(),
    codes.VideoUrlErrorCodes.invalidFormat: () =>
    const VideoUrlInvalidFormatFailure(),
    codes.VideoUrlErrorCodes.unsupportedScheme: () =>
    const VideoUrlUnsupportedSchemeFailure(),
    codes.VideoUrlErrorCodes.unauthorizedHost: () =>
    const VideoUrlUnauthorizedHostFailure(),
  };

  static VideoFailure? map(String? code) {
    if (code == null) return null;
    return _map[code]?.call();
  }
}
