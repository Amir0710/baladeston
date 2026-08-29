import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/video/failure/base_video_failure.dart';
import 'package:baladeston/domain/video/repository/video_repository.dart';
import 'package:baladeston/domain/video/usecase/video_upload_image_file/video_upload_image_file_usecase_business_rule.dart';
import 'package:image_picker/image_picker.dart';

class VideoUploadImageFileUsecase {
  final VideoRepository repository;

  const VideoUploadImageFileUsecase({
    required this.repository,
  });

  Future<Result<String, VideoFailure>> call({
    required XFile image,
  }) async {
    final businessRule = VideoUploadImageFileUsecaseBusinessRule(
      image: image,
    );

    final validationResult = await businessRule.validate();

    return validationResult.when(
      success: (_) => repository.uploadImage(image: image),
      failure: (failure) => Result.failure(failure),
    );
  }
}
