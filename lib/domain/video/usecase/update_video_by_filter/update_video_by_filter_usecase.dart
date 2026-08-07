import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/video/filter/video_query_filter.dart';
import 'package:baladeston/domain/video/entity/video_entity.dart';
import 'package:baladeston/domain/video/failure/base_video_failure.dart';
import 'package:baladeston/domain/video/repository/video_repository.dart';
import 'package:baladeston/domain/video/usecase/update_video_by_filter/update_video_by_filter_usecase_business_rule.dart';

class UpdateVideoByFilterUseCase {
  final VideoRepository repository;

  const UpdateVideoByFilterUseCase({
    required this.repository,
  });

  Future<Result<int, VideoFailure>> call({
    required VideoQueryFilter filter,
    required VideoEntity video,
  }) async {
    final businessRule = UpdateVideoByFilterUsecaseBusinessRule(
      filter: filter,
      video: video,
    );

    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) =>
          repository.updateVideoByFilter(filter: filter, video: video),
      failure: (failure) => Result.failure(failure),
    );
  }
}
