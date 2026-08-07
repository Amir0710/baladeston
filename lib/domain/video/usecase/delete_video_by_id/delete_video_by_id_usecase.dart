import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/video/failure/base_video_failure.dart';
import 'package:baladeston/domain/video/repository/video_repository.dart';
import 'package:baladeston/domain/video/usecase/delete_video_by_id/delete_video_by_id_usecase_business_rule.dart';

class DeleteVideoByIdUseCase {
  final VideoRepository repository;

  const DeleteVideoByIdUseCase({
    required this.repository,
  });

  Future<Result<int, VideoFailure>> call({
    required int id,
  }) async {
    final businessRule = DeleteVideoByIdUsecaseBusinessRule(
      id: id,
    );

    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.deleteVideoById(id: id),
      failure: (failure) => Result.failure(failure),
    );
  }
}
