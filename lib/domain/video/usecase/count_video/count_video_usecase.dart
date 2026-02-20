import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/video/filter/video_query_filter.dart';
import 'package:baladeston/domain/video/exception/video_filter_exception.dart';
import 'package:baladeston/domain/video/failure/video_failure.dart';
import 'package:baladeston/domain/video/repository/video_repository.dart';
import 'package:baladeston/domain/video/usecase/count_video/count_video_usecase_business_rule.dart';

class CountVideoUseCase {
  final VideoRepository repository;

  const CountVideoUseCase(this.repository);

  Future<Result<int, VideoFailure>> call({
    required VideoQueryFilter filter,
  }) async {
    try {
      final rule = CountVideoUseCaseBusinessRule(
        filter: filter,
      );
      rule.validate();
    } on VideoFilterException catch (e) {
      return Result.failure(
        VideoValidationFailure(e.message),
      );
    }

    return repository.countVideos(
      filter: filter,
    );
  }
}
