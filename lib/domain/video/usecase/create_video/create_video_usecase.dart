import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/video/entity/video_entity.dart';
import 'package:baladeston/domain/video/exception/video_entity_exception.dart';
import 'package:baladeston/domain/video/failure/video_failure.dart';
import 'package:baladeston/domain/video/repository/video_repository.dart';
import 'create_video_usecase_business_rule.dart';

class CreateVideoUseCase {
  final VideoRepository repository;

  const CreateVideoUseCase(this.repository);

  Future<Result<VideoEntity, VideoFailure>> call({
    required VideoEntity video,
  }) async {
    try {
      final rule = CreateVideoUseCaseBusinessRule(video);
      rule.validate();
    } on VideoEntityException catch (e) {
      return Result.failure(
        VideoValidationFailure(e.message),
      );
    }

    return repository.createVideo(video: video);
  }
}
