import 'package:baladeston/domain/video/failure/base_video_failure.dart';

abstract class VideoFilterFailure extends BaseVideoValidationFailure {
  const VideoFilterFailure();
}

class VideoFilterLimitInvalidFailure extends VideoFilterFailure {
  const VideoFilterLimitInvalidFailure();
}

class VideoFilterOffsetInvalidFailure extends VideoFilterFailure {
  const VideoFilterOffsetInvalidFailure();
}

class VideoFilterRatingInvalidFailure extends VideoFilterFailure {
  const VideoFilterRatingInvalidFailure();
}

class VideoFilterOrderInvalidFailure extends VideoFilterFailure {
  const VideoFilterOrderInvalidFailure();
}

class VideoFilterOwnerInvalidFailure extends VideoFilterFailure {
  const VideoFilterOwnerInvalidFailure();
}
class VideoQueryFilterPriceInvalidFailure extends VideoFilterFailure {
  const VideoQueryFilterPriceInvalidFailure();
}

class VideoQueryFilterDateRangeInvalidFailure extends VideoFilterFailure {
  const VideoQueryFilterDateRangeInvalidFailure();
}


class VideoFilterEmptyFailure extends VideoFilterFailure {
  const VideoFilterEmptyFailure();
}
