import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/video/exception/video_id_exception.dart';
import 'package:baladeston/domain/video/failure/video_failure.dart';
import 'package:baladeston/domain/video/repository/video_repository.dart';
import 'delete_video_by_id_usecase_business_rule.dart';

class DeleteVideoByIdUseCase {
  final VideoRepository repository;

  const DeleteVideoByIdUseCase(this.repository);

  Future<Result<int, VideoFailure>> call({
    required int id,
  }) async {
    try {
      final rule = DeleteVideoByIdUseCaseBusinessRule(
        id: id,
      );
      rule.validate();
    } on VideoIdException catch (e) {
      return Result.failure(
        VideoValidationFailure(e.message),
      );
    }

    return repository.deleteVideoById(
      id: id,
    );
  }
}
