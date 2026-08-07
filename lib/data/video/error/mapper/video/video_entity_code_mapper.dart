import 'package:baladeston/data/video/api/error_codes/video/video_entity_error_codes.dart'
as codes;
import 'package:baladeston/domain/video/failure/base_video_failure.dart';
import 'package:baladeston/domain/video/failure/domain/validation/video_entity_failure.dart';

class VideoEntityCodeMapper {
  const VideoEntityCodeMapper();

  static final Map<String, VideoFailure Function()> _map = {
    codes.VideoEntityErrorCodes.titleEmpty: () =>
    const VideoEntityTitleEmptyFailure(),
    codes.VideoEntityErrorCodes.titleInvalid: () =>
    const VideoEntityTitleInvalidFailure(),
    codes.VideoEntityErrorCodes.ownerRequired: () =>
    const VideoEntityOwnerRequiredFailure(),
    codes.VideoEntityErrorCodes.ownerIdInvalid: () =>
    const VideoEntityOwnerIdInvalidFailure(),
    codes.VideoEntityErrorCodes.idInvalid: () =>
    const VideoEntityIdInvalidFailure(),
    codes.VideoEntityErrorCodes.statusInvalid: () =>
    const VideoEntityStatusInvalidFailure(),
    codes.VideoEntityErrorCodes.thumbnailInvalid: () =>
    const VideoEntityThumbnailInvalidFailure(),
    codes.VideoEntityErrorCodes.videoUrlInvalid: () =>
    const VideoEntityVideoUrlInvalidFailure(),
    codes.VideoEntityErrorCodes.noUpdatableFields: () =>
    const VideoEntityNoUpdatableFieldsFailure(),
  };

  static VideoFailure? map(String? code) {
    if (code == null) return null;

    final factory = _map[code];
    return factory?.call();
  }
}
