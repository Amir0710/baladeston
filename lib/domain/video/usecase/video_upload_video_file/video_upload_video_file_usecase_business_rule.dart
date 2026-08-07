import 'dart:io';

import 'package:baladeston/core/constants/formats.dart';
import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/video/failure/base_video_failure.dart';
import 'package:baladeston/domain/video/failure/domain/validation/video_file_failure.dart';

class VideoUploadVideoFileUsecaseBusinessRule {
  final File video;

  const VideoUploadVideoFileUsecaseBusinessRule({
    required this.video,
  });

  Result<void, VideoFailure> validate() {
    return videoVideoFileValidation();
  }

  Result<void, VideoFailure> videoVideoFileValidation() {
    final limit = Limits();
    final format = Formats();
    if (video.lengthSync() > limit.maxVideoFileSize) {
      return Result.failure(VideoFileTooLargeFailure());
    }

    final extension = video.path.toLowerCase();
    final isFormatValid = format.videoFileFormats.any(
      (allowedFormat) => extension.endsWith(allowedFormat),
    );

    if (!isFormatValid) {
      return Result.failure(VideoFileInvalidFormatFailure());
    }
    return const Result.success(null);
  }
}
