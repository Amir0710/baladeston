import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/video/filter/video_query_filter.dart';
import 'package:baladeston/domain/video/failure/base_video_failure.dart';
import 'package:baladeston/domain/video/repository/video_repository.dart';
import 'package:baladeston/domain/video/usecase/count_video/count_video_usecase_business_rule.dart';

class CountVideosUseCase {
  final VideoRepository repository;

  const CountVideosUseCase({
    required this.repository,
  });

  Future<Result<int, VideoFailure>> call({
    required VideoQueryFilter filter,
  }) async {
    final businessRule = CountVideosUsecaseBusinessRule(
      filter: filter,
    );

    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.countVideos(filter: filter),
      failure: (failure) => Result.failure(failure),
    );
  }
}
