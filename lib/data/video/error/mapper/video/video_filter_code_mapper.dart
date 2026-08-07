import 'package:baladeston/data/video/api/error_codes/video/video_filter_error_codes.dart'
    as codes;
import 'package:baladeston/domain/video/failure/base_video_failure.dart';
import 'package:baladeston/domain/video/failure/domain/validation/video_filter_failure.dart';

class VideoFilterCodeMapper {
  const VideoFilterCodeMapper();

  static final Map<String, VideoFailure Function()> _map = {
    codes.VideoFilterErrorCodes.limitInvalid: () =>
        const VideoFilterLimitInvalidFailure(),
    codes.VideoFilterErrorCodes.offsetInvalid: () =>
        const VideoFilterOffsetInvalidFailure(),
    codes.VideoFilterErrorCodes.ratingInvalid: () =>
        const VideoFilterRatingInvalidFailure(),
    codes.VideoFilterErrorCodes.orderInvalid: () =>
        const VideoFilterOrderInvalidFailure(),
    codes.VideoFilterErrorCodes.ownerInvalid: () =>
        const VideoFilterOwnerInvalidFailure(),
    codes.VideoFilterErrorCodes.dataRangeInvalid: () =>
        const VideoQueryFilterDateRangeInvalidFailure(),
    codes.VideoFilterErrorCodes.priceInvalid: () =>
        VideoQueryFilterPriceInvalidFailure(),
    codes.VideoFilterErrorCodes.empty: () => const VideoFilterEmptyFailure(),
  };

  static VideoFailure? map(String? code) {
    if (code == null) return null;

    final factory = _map[code];
    return factory?.call();
  }
}
