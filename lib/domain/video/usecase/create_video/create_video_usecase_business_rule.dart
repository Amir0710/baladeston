import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/video/entity/video_entity.dart';
import 'package:baladeston/domain/video/failure/base_video_failure.dart';
import 'package:baladeston/domain/video/failure/domain/validation/video_entity_failure.dart';

class CreateVideoUsecaseBusinessRule {
  final VideoEntity video;

  const CreateVideoUsecaseBusinessRule({
    required this.video,
  });

  Result<void, VideoFailure> validate() {
    return videoEntityValidation();
  }

  Result<void, VideoFailure> videoEntityValidation() {
    if (video.title.isEmpty) {
      return const Result.failure(VideoEntityTitleEmptyFailure());
    }

    if (video.ownerId <= 0) {
      return Result.failure(VideoEntityOwnerIdInvalidFailure());
    }

    if (video.price < 0) {
      return Result.failure(VideoEntityPriceInvalidFailure());
    }
    if (video.recommendedAge <= 0) {
      return Result.failure(VideoEntityOwnerRequiredFailure());
    }
    return const Result.success(null);
  }
}
