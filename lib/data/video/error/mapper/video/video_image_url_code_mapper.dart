import 'package:baladeston/data/video/api/error_codes/video/video_image_url_error_codes.dart'
    as codes;
import 'package:baladeston/domain/video/failure/base_video_failure.dart';
import 'package:baladeston/domain/video/failure/domain/validation/video_image_url_failure.dart';

class VideoImageUrlCodeMapper {
  const VideoImageUrlCodeMapper();

  static final Map<String, VideoFailure Function()> _map = {
    codes.VideoImageUrlErrorCodes.emptyUrl: () =>
        const VideoImageUrlEmptyFailure(),
    codes.VideoImageUrlErrorCodes.invalidFormat: () =>
        const VideoImageUrlInvalidFormatFailure(),
    codes.VideoImageUrlErrorCodes.unsupportedScheme: () =>
        const VideoImageUrlUnsupportedSchemeFailure(),
    codes.VideoImageUrlErrorCodes.unauthorizedHost: () =>
        const VideoImageUrlUnauthorizedHostFailure(),
    codes.VideoImageUrlErrorCodes.invalidId: () =>
        const VideoImageUrlInvalidIdFailure(),
  };

  static VideoFailure? map(String? code) {
    if (code == null) return null;
    return _map[code]?.call();
  }
}
