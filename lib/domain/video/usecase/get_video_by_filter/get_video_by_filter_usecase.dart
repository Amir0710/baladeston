import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/video/filter/video_query_filter.dart';
import 'package:baladeston/domain/video/entity/video_entity.dart';
import 'package:baladeston/domain/video/failure/base_video_failure.dart';
import 'package:baladeston/domain/video/repository/video_repository.dart';
import 'package:baladeston/domain/video/usecase/get_video_by_filter/get_video_by_filter_usecase_business_rule.dart';

class GetVideoByFilterUseCase {
  final VideoRepository repository;

  const GetVideoByFilterUseCase({
    required this.repository,
  });

  Future<Result<List<VideoEntity>, VideoFailure>> call({
    required VideoQueryFilter filter,
  }) async {
    final businessRule = GetVideoByFilterUsecaseBusinessRule(
      filter: filter,
    );

    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.getVideoByFilter(filter: filter),
      failure: (failure) => Result.failure(failure),
    );
  }
}
