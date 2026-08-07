import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/video/failure/base_video_failure.dart';
import 'package:baladeston/domain/video/failure/domain/validation/video_id_failure.dart';

class DeleteVideoByIdUsecaseBusinessRule {
  final int id;

  const DeleteVideoByIdUsecaseBusinessRule({
    required this.id,
  });

  Result<void, VideoFailure> validate() {
      return videoIdValidation();
  }

  Result<void,VideoFailure> videoIdValidation()
  {
    if (id <= 0) {
      return const Result.failure(VideoIdInvalidFailure());
    }

    return const Result.success(null);
  }
}
