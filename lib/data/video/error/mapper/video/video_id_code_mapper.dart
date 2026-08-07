import 'package:baladeston/data/video/api/error_codes/video/video_id_error_codes.dart'
as codes;
import 'package:baladeston/domain/video/failure/base_video_failure.dart';
import 'package:baladeston/domain/video/failure/domain/validation/video_id_failure.dart';

class VideoIdCodeMapper {
  const VideoIdCodeMapper();

  static final Map<String, VideoFailure Function()> _map = {
    codes.VideoIdErrorCodes.required: () =>
    const VideoIdRequiredFailure(),
    codes.VideoIdErrorCodes.invalid: () =>
    const VideoIdInvalidFailure(),
  };

  static VideoFailure? map(String? code) {
    if (code == null) return null;

    final factory = _map[code];
    return factory?.call();
  }
}
