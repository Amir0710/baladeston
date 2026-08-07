import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/video/entity/video_entity.dart';
import 'package:baladeston/domain/video/failure/base_video_failure.dart';
import 'package:baladeston/domain/video/repository/video_repository.dart';
import 'package:baladeston/domain/video/usecase/get_video_by_id/get_video_by_id_usecase_business_rule.dart';

class GetVideoByIdUseCase {
  final VideoRepository repository;

  const GetVideoByIdUseCase({
    required this.repository,
  });

  Future<Result<VideoEntity, VideoFailure>> call({
    required int id,
  }) async {
    final businessRule = GetVideoByIdUsecaseBusinessRule(
      id: id,
    );

    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.getVideoById(id: id),
      failure: (failure) => Result.failure(failure),
    );
  }
}
