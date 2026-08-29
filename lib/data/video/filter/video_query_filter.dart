import 'package:baladeston/core/enum/video/video_level.dart';
import 'package:baladeston/core/enum/video/video_order.dart';
import 'package:baladeston/core/enum/video/video_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_query_filter.freezed.dart';
part 'video_query_filter.g.dart';

@freezed
class VideoQueryFilter with _$VideoQueryFilter {
  const factory VideoQueryFilter({
    List<int>? ids,
    String? searchTerm,
    VideoStatus? status,
    int? uploaderId,
    int? minRecommendedAge,
    int? maxRecommendedAge,
    VideoLevel? level,
    double? minRating,
    DateTime? uploadedAfter,
    DateTime? uploadedBefore,
    int? videoDuration,
    int? ownerId,
    int? minPrice,
    int? maxPrice,
    @Default(20) int limit,
    String? cursor,
    @Default(false) bool ascending,
    @Default(VideoOrder.createdAt) VideoOrder order,
  }) = _VideoQueryFilter;

  factory VideoQueryFilter.fromJson(Map<String, dynamic> json) =>
      _$VideoQueryFilterFromJson(json);
}
