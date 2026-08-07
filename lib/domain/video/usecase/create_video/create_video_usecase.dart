import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/video/entity/video_entity.dart';
import 'package:baladeston/domain/video/failure/base_video_failure.dart';
import 'package:baladeston/domain/video/repository/video_repository.dart';
import 'package:baladeston/domain/video/usecase/create_video/create_video_usecase_business_rule.dart';

class CreateVideoUseCase {
  final VideoRepository repository;

  const CreateVideoUseCase({
    required this.repository,
  });

  Future<Result<VideoEntity, VideoFailure>> call({
    required VideoEntity video,
  }) async {
    final businessRule = CreateVideoUsecaseBusinessRule(
      video: video,
    );

    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.createVideo(video: video),
      failure: (failure) => Result.failure(failure),
    );
  }
}
