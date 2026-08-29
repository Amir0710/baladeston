import 'package:baladeston/domain/video/failure/base_video_failure.dart';

abstract class VideoFilterFailure extends BaseVideoValidationFailure {
  const VideoFilterFailure();
}

// ids
final class VideoFilterInvalidIdsFailure extends VideoFilterFailure {
  const VideoFilterInvalidIdsFailure();
}

// searchTerm
final class VideoFilterSearchTermTooShortFailure extends VideoFilterFailure {
  const VideoFilterSearchTermTooShortFailure();
}

final class VideoFilterSearchTermTooLongFailure extends VideoFilterFailure {
  const VideoFilterSearchTermTooLongFailure();
}

final class VideoFilterControlCharSearchTermFailure extends VideoFilterFailure {
  const VideoFilterControlCharSearchTermFailure();
}

final class VideoFilterContainsHtmlSearchTermFailure
    extends VideoFilterFailure {
  const VideoFilterContainsHtmlSearchTermFailure();
}

final class VideoFilterEmojiOnlySearchTermFailure extends VideoFilterFailure {
  const VideoFilterEmojiOnlySearchTermFailure();
}

// recommended age
class VideoFilterRecommendedAgeTooLowFailure extends VideoFilterFailure {
  const VideoFilterRecommendedAgeTooLowFailure();
}

class VideoFilterRecommendedAgeTooHighFailure extends VideoFilterFailure {
  const VideoFilterRecommendedAgeTooHighFailure();
}

class VideoFilterRecommendedAgeRangeFailure extends VideoFilterFailure {
  const VideoFilterRecommendedAgeRangeFailure();
}

// rate
class VideoFilterRatingInvalidFailure extends VideoFilterFailure {
  const VideoFilterRatingInvalidFailure();
}

// price
class VideoFilterPriceTooLowFailure extends VideoFilterFailure {
  const VideoFilterPriceTooLowFailure();
}

class VideoFilterPriceTooHighFailure extends VideoFilterFailure {
  const VideoFilterPriceTooHighFailure();
}

class VideoFilterPriceRangeFailure extends VideoFilterFailure {
  const VideoFilterPriceRangeFailure();
}

// dates
final class VideoFilterInvalidUploadedAfterFailure extends VideoFilterFailure {
  const VideoFilterInvalidUploadedAfterFailure();
}

final class VideoFilterInvalidUploadedBeforeFailure extends VideoFilterFailure {
  const VideoFilterInvalidUploadedBeforeFailure();
}

final class VideoFilterInvalidDateRangeFailure extends VideoFilterFailure {
  const VideoFilterInvalidDateRangeFailure();
}

// empty
final class VideoFilterEmptyFailure extends VideoFilterFailure {
  const VideoFilterEmptyFailure();
}
