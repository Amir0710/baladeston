import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/video/filter/video_query_filter.dart';
import 'package:baladeston/domain/video/exception/video_filter_exception.dart';
import 'package:baladeston/domain/video/failure/video_failure.dart';
import 'package:baladeston/domain/video/repository/video_repository.dart';
import 'delete_video_by_filter_usecase_business_rule.dart';

class DeleteVideoByFilterUseCase {
  final VideoRepository repository;

  const DeleteVideoByFilterUseCase(this.repository);

  Future<Result<List<int>, VideoFailure>> call({
    required VideoQueryFilter filter,
  }) async {
    try {
      final rule = DeleteVideoByFilterUseCaseBusinessRule(filter: filter);
      rule.validate();
    } on VideoFilterException catch (e) {
      return Result.failure(VideoValidationFailure(e.message));
    }

    return repository.deleteVideoByFilter(filter: filter);
  }
}
