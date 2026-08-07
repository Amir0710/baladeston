
import 'package:baladeston/domain/video/failure/base_video_failure.dart';

abstract class VideoNotFoundFailure extends BaseVideoNotFoundFailure {
  const VideoNotFoundFailure();
}

abstract class VideoEntityNotFoundFailure
    extends VideoNotFoundFailure {
  const VideoEntityNotFoundFailure();
}

abstract class VideoItemEntityNotFoundFailure
    extends VideoNotFoundFailure {
  const VideoItemEntityNotFoundFailure();
}
