import 'package:baladeston/domain/video/failure/base_video_failure.dart';

abstract class VideoEntityFailure extends BaseVideoValidationFailure {
  const VideoEntityFailure();
}

class VideoEntityTitleEmptyFailure extends VideoEntityFailure {
  const VideoEntityTitleEmptyFailure();
}

class VideoEntityOwnerRequiredFailure extends VideoEntityFailure {
  const VideoEntityOwnerRequiredFailure();
}
class VideoEntityOwnerIdInvalidFailure extends VideoEntityFailure {
  const VideoEntityOwnerIdInvalidFailure();
}

class VideoEntityIdInvalidFailure extends VideoEntityFailure {
  const VideoEntityIdInvalidFailure();
}

class VideoEntityTitleInvalidFailure extends VideoEntityFailure {
  const VideoEntityTitleInvalidFailure();
}


class VideoEntityStatusInvalidFailure extends VideoEntityFailure {
  const VideoEntityStatusInvalidFailure();
}

class VideoEntityThumbnailInvalidFailure extends VideoEntityFailure {
  const VideoEntityThumbnailInvalidFailure();
}

class VideoEntityNoUpdatableFieldsFailure extends VideoEntityFailure {
  const VideoEntityNoUpdatableFieldsFailure();
}

class VideoEntityVideoUrlInvalidFailure extends VideoEntityFailure {
  const VideoEntityVideoUrlInvalidFailure();
}

class VideoEntityRecommendAgeInvalidFailure extends VideoEntityFailure {
  const VideoEntityRecommendAgeInvalidFailure();
}

class VideoEntityLevelInvalidFailure extends VideoEntityFailure {
  const VideoEntityLevelInvalidFailure();
}

class VideoEntityPriceInvalidFailure extends VideoEntityFailure {
  const VideoEntityPriceInvalidFailure();
}

