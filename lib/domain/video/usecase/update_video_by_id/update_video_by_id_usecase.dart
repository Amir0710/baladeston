import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/video/entity/video_entity.dart';
import 'package:baladeston/domain/video/exception/video_entity_exception.dart';
import 'package:baladeston/domain/video/exception/video_id_exception.dart';
import 'package:baladeston/domain/video/failure/video_failure.dart';
import 'package:baladeston/domain/video/repository/video_repository.dart';
import 'package:baladeston/domain/video/usecase/update_video_by_id/update_video_by_id_usecase_business_rule.dart';

class UpdateVideoByIdUseCase {
  final VideoRepository repository;

  const UpdateVideoByIdUseCase(this.repository);

  Future<Result<VideoEntity, VideoFailure>> call({
    required int id,
    required VideoEntity video,
  }) async {
    try {
      final rule = UpdateVideoByIdUseCaseBusinessRule(
        id: id,
        video: video,
      );
      rule.validate();
    } on VideoIdException catch (e) {
      return Result.failure(
        VideoValidationFailure(e.message),
      );
    } on VideoEntityException catch (e) {
      return Result.failure(
        VideoValidationFailure(e.message),
      );
    }

    return repository.updateVideoById(
      id: id,
      video: video,
    );
  }
}
