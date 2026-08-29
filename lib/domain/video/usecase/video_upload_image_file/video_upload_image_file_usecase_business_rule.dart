import 'package:baladeston/core/constants/formats.dart';
import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/core/variable/image_signature_validator.dart';
import 'package:baladeston/domain/video/failure/base_video_failure.dart';
import 'package:baladeston/domain/video/failure/domain/validation/video_image_file_failure.dart';
import 'package:image_picker/image_picker.dart';

class VideoUploadImageFileUsecaseBusinessRule {
  final XFile image;
  static const _limits = Limits();
  static const _formats = Formats();

  const VideoUploadImageFileUsecaseBusinessRule({
    required this.image,
  });

  Future<Result<void, VideoFailure>> validate() async {
    return await videoImageFileValidation();
  }

  Future<Result<void, VideoImageFileFailure>> videoImageFileValidation() async {
    final int size = await image.length();

    if (size > _limits.maxVideoImageSize) {
      return const Result.failure(VideoImageFileTooLargeFailure());
    }

    final ext = image.path.split('.').last.toLowerCase();
    if (!_formats.allowImageFormats.contains(ext)) {
      return const Result.failure(VideoImageFileInvalidFormatFailure());
    }

    final isRealImage = await ImageSignatureValidator.isImageFile(image);
    if (!(isRealImage)) {
      return const Result.failure(VideoImageFileInvalidContentFailure());
    }

    return const Result.success(null);
  }
}
