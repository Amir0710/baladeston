import 'dart:io';

import 'package:baladeston/core/constants/formats.dart';
import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/video/failure/base_video_failure.dart';
import 'package:baladeston/domain/video/failure/domain/validation/video_image_file_failure.dart';

class VideoUploadImageFileUsecaseBusinessRule {
  final File image;

  const VideoUploadImageFileUsecaseBusinessRule({
    required this.image,
  });

  Result<void, VideoFailure> validate() {
    return videoImageFileValidation();
  }

  Result<void, VideoFailure> videoImageFileValidation() {
    final limit = Limits();
    final format = Formats();
    if (image.lengthSync() > limit.maxVideoImageSize) {
      return Result.failure(VideoImageFileTooLargeFailure());
    }

    final extension = image.path.toLowerCase();
    final isFormatValid = format.videoImageFormats.any(
      (allowedFormat) => extension.endsWith(allowedFormat),
    );

    if (!isFormatValid) {
      return Result.failure(VideoImageFileInvalidFormatFailure());
    }
    return const Result.success(null);
  }
}
