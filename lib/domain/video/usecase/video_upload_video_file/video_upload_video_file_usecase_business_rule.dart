import 'package:baladeston/core/constants/formats.dart';
import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/core/variable/video_signature_validator.dart';
import 'package:baladeston/domain/video/failure/domain/validation/video_file_failure.dart';
import 'package:image_picker/image_picker.dart';

class VideoUploadVideoFileUsecaseBusinessRule {
  final XFile video;

  const VideoUploadVideoFileUsecaseBusinessRule({required this.video});

  static const _limits = Limits();
  static const _formats = Formats();

  Future<Result<void, VideoFileFailure>> validate() {
    return videoVideoFileValidation();
  }

  Future<Result<void, VideoFileFailure>> videoVideoFileValidation() async {
    final size = await video.length();
    if (size > _limits.maxVideoFileSize) {
      return Result.failure(const VideoFileTooLargeFailure());
    }

    final extension = '.${video.name.split('.').last.toLowerCase()}';
    if (!_formats.allowVideoFileFormats.contains(extension)) {
      return Result.failure(const VideoFileInvalidFormatFailure());
    }

    final isRealVideo = await VideoSignatureValidator.isVideoFile(video);
    if (!isRealVideo) {
      return Result.failure(const VideoFileInvalidContentFailure());
    }

    return const Result.success(null);
  }
}
