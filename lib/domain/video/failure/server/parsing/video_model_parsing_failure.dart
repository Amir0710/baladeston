import 'package:baladeston/domain/video/failure/base_video_failure.dart';

final class VideoModelParsingFailure extends BaseVideoModelParsingFailure {
  final String debugMessage;
  final String? rawSource;

  const VideoModelParsingFailure({
    required this.debugMessage,
    this.rawSource,
  });
}
