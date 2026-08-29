import 'package:baladeston/domain/video/failure/base_video_failure.dart';

final class VideoDataIntegrityFailure extends BaseVideoDataIntegrityFailure {
  final String debugMessage;
  final String? rawSource;

  const VideoDataIntegrityFailure({
    required this.debugMessage,
    this.rawSource,
  });
}
