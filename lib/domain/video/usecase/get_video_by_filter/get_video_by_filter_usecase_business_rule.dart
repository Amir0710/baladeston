import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/video/filter/video_query_filter.dart';
import 'package:baladeston/domain/video/failure/base_video_failure.dart';
import 'package:baladeston/domain/video/failure/domain/validation/video_filter_failure.dart';

class GetVideoByFilterUsecaseBusinessRule {
  final VideoQueryFilter filter;

  const GetVideoByFilterUsecaseBusinessRule({
    required this.filter,
  });

  Result<void, VideoFailure> validate() {
    return videoFilterValidation();
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

    if( filter.ownerId != null  && filter.ownerId! < 0 )
      {
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
}
