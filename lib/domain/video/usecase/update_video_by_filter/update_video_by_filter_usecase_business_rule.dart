import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/video/filter/video_query_filter.dart';
import 'package:baladeston/domain/video/entity/video_entity.dart';
import 'package:baladeston/domain/video/failure/base_video_failure.dart';
import 'package:baladeston/domain/video/failure/domain/validation/video_entity_failure.dart';
import 'package:baladeston/domain/video/failure/domain/validation/video_filter_failure.dart';

class UpdateVideoByFilterUsecaseBusinessRule {
  final VideoEntity video;
  final VideoQueryFilter filter;

  const UpdateVideoByFilterUsecaseBusinessRule({
    required this.video,
    required this.filter,
  });

  Result<void, VideoFailure> validate() {
    late Result<void, VideoFailure> result;

    videoFilterValidation().when(
      success: (_) {
        result = videoEntityValidation();
      },
      failure: (failure) {
        result = Result.failure(failure);
      },
    );

    return result;
  }

  Result<void, VideoFailure> videoFilterValidation() {
    final limit = Limits();
    if (filter.limit < limit.minFilterLimitSize ||
        filter.limit > limit.maxFilterLimitSize) {
      return Result.failure(VideoFilterLimitInvalidFailure());
    }
    if (filter.offset < 0) {
      return Result.failure(VideoFilterOffsetInvalidFailure());
    }

    if (filter.maxRating != null && filter.maxRating! > limit.maxFilterRate) {
      return Result.failure(VideoFilterRatingInvalidFailure());
    }

    if (filter.minRating != null && filter.minRating! < limit.minFilterRate) {
      return Result.failure(VideoFilterRatingInvalidFailure());
    }

    if (filter.ownerId != null && filter.ownerId! < 0) {
      return Result.failure(VideoFilterOwnerInvalidFailure());
    }

    final hasAnyFilter = filter.ownerId != null ||
        (filter.searchTerm != null && filter.searchTerm!.isNotEmpty) ||
        filter.status != null ||
        filter.minRating != null ||
        filter.maxRating != null ||
        filter.level != null ||
        filter.minPrice != null ||
        filter.maxPrice != null;

    if (!hasAnyFilter) {
      return const Result.failure(VideoFilterEmptyFailure());
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
