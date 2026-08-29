import 'package:baladeston/domain/video/failure/base_video_failure.dart';

abstract class VideoEntityFailure extends BaseVideoValidationFailure {
  const VideoEntityFailure();
}

// title
class VideoEntityTitleEmptyFailure extends VideoEntityFailure {
  const VideoEntityTitleEmptyFailure();
}
class VideoEntityTitleTooShortFailure extends VideoEntityFailure {
  const VideoEntityTitleTooShortFailure();
}
class VideoEntityTitleTooLongFailure extends VideoEntityFailure {
  const VideoEntityTitleTooLongFailure();
}
class VideoEntityTitleControlCharFailure extends VideoEntityFailure {
  const VideoEntityTitleControlCharFailure();
}
class VideoEntityTitleContainsHtmlFailure extends VideoEntityFailure {
  const VideoEntityTitleContainsHtmlFailure();
}
class VideoEntityTitleEmojiOnlyFailure extends VideoEntityFailure {
  const VideoEntityTitleEmojiOnlyFailure();
}

// description
final class VideoEntityMissingDescriptionFailure
    extends VideoEntityFailure {
  const VideoEntityMissingDescriptionFailure();
}
final class VideoEntityTooShortDescriptionFailure
    extends VideoEntityFailure {
  const VideoEntityTooShortDescriptionFailure();
}

final class VideoEntityTooLongDescriptionFailure
    extends VideoEntityFailure {
  const VideoEntityTooLongDescriptionFailure();
}

final class VideoEntityControlCharDescriptionFailure
    extends VideoEntityFailure {
  const VideoEntityControlCharDescriptionFailure();
}

final class VideoEntityContainsHtmlDescriptionFailure
    extends VideoEntityFailure {
  const VideoEntityContainsHtmlDescriptionFailure();
}

final class VideoEntityEmojiOnlyDescriptionFailure
    extends VideoEntityFailure {
  const VideoEntityEmojiOnlyDescriptionFailure();
}


// recommended age
class VideoEntityRecommendedAgeTooLowFailure extends VideoEntityFailure {
  const VideoEntityRecommendedAgeTooLowFailure();
}
class VideoEntityRecommendedAgeTooHighFailure extends VideoEntityFailure {
  const VideoEntityRecommendedAgeTooHighFailure();
}


// price
class VideoEntityPriceTooLowFailure extends VideoEntityFailure {
  const VideoEntityPriceTooLowFailure();
}
class VideoEntityPriceTooHighFailure extends VideoEntityFailure {
  const VideoEntityPriceTooHighFailure();
}
