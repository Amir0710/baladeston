import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/video/filter/video_query_filter.dart';
import 'package:baladeston/domain/video/failure/base_video_failure.dart';
import 'package:baladeston/domain/video/repository/video_repository.dart';
import 'package:baladeston/domain/video/usecase/delete_video_by_filter/delete_video_by_filter_usecase_business_rule.dart';

class DeleteVideoByFilterUseCase {
  final VideoRepository repository;

  const DeleteVideoByFilterUseCase({
    required this.repository,
  });

  Future<Result<int, VideoFailure>> call({
    required VideoQueryFilter filter,
  }) async {
    final businessRule = DeleteVideoByFilterUsecaseBusinessRule(
      filter: filter,
    );

    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.deleteVideoByFilter(filter: filter),
      failure: (failure) => Result.failure(failure),
    );
  }
}
