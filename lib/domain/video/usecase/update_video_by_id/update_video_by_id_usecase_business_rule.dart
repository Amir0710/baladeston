import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/video/entity/video_entity.dart';
import 'package:baladeston/domain/video/failure/base_video_failure.dart';
import 'package:baladeston/domain/video/failure/domain/validation/video_entity_failure.dart';
import 'package:baladeston/domain/video/failure/domain/validation/video_id_failure.dart';

class UpdateVideoByIdUsecaseBusinessRule {
  final VideoEntity video;
  final int id;

  const UpdateVideoByIdUsecaseBusinessRule({
    required this.video,
    required this.id,
  });

  Result<void, VideoFailure> validate() {
    late Result<void, VideoFailure> result;

    videoIdValidation().when(
      success: (_) {
        result = videoEntityValidation();
      },
      failure: (failure) {
        result = Result.failure(failure);
      },
    );

    return result;
  }

  Result<void,VideoFailure> videoIdValidation()
  {
    if (id <= 0) {
      return const Result.failure(VideoIdInvalidFailure());
    }

    return const Result.success(null);
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
