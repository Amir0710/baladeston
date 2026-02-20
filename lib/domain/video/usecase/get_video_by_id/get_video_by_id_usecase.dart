import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/video/entity/video_entity.dart';
import 'package:baladeston/domain/video/exception/video_id_exception.dart';
import 'package:baladeston/domain/video/failure/video_failure.dart';
import 'package:baladeston/domain/video/repository/video_repository.dart';
import 'get_video_by_id_usecase_business_rule.dart';

class GetVideoByIdUseCase {
  final VideoRepository repository;

  const GetVideoByIdUseCase(this.repository);

  Future<Result<VideoEntity, VideoFailure>> call({
    required int id,
  }) async {
    try {
      final rule = GetVideoByIdUseCaseBusinessRule(
        id: id,
      );
      rule.validate();
    } on VideoIdException catch (e) {
      return Result.failure(
        VideoValidationFailure(e.message),
      );
    }

    return repository.getVideoById(
      id: id,
    );
  }
}
