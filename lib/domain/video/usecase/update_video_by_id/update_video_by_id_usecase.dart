import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/video/entity/video_entity.dart';
import 'package:baladeston/domain/video/failure/base_video_failure.dart';
import 'package:baladeston/domain/video/repository/video_repository.dart';
import 'package:baladeston/domain/video/usecase/update_video_by_id/update_video_by_id_usecase_business_rule.dart';

class UpdateVideoByIdUseCase {
  final VideoRepository repository;

  const UpdateVideoByIdUseCase({
    required this.repository,
  });

  Future<Result<VideoEntity, VideoFailure>> call({
    required int id,
    required VideoEntity video,
  }) async {
    final businessRule = UpdateVideoByIdUsecaseBusinessRule(
      id: id,
      video: video,
    );

    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.updateVideoById(id: id, video: video),
      failure: (failure) => Result.failure(failure),
    );
  }
}
