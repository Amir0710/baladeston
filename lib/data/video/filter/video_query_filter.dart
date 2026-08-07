import 'package:baladeston/core/enum/video/video_level.dart';
import 'package:baladeston/core/enum/video/video_order.dart';
import 'package:baladeston/core/enum/video/video_status.dart';

class VideoQueryFilter {
  final int? id;
  final String? searchTerm;
  final VideoStatus? status;
  final int? uploaderId;
  final int? recommendedAge;
  final VideoLevel? level;
  final double? minRating;
  final double? maxRating;
  final DateTime? uploadedAfter;
  final DateTime? uploadedBefore;
  final int? videoDuration;
  final int? ownerId;
  final int? minPrice;
  final int? maxPrice;

  final VideoOrder orderBy;
  final bool ascending;
  final int limit;
  final int offset;

  VideoQueryFilter({
    this.id,
    this.searchTerm,
    this.status,
    this.uploaderId,
    this.minRating,
    this.maxRating,
    this.uploadedAfter,
    this.recommendedAge,
    this.uploadedBefore,
    this.videoDuration,
    this.ownerId,
    this.level,
    this.minPrice,
    this.maxPrice,
    this.orderBy = VideoOrder.title,
    this.limit = 20,
    this.offset = 0,
    this.ascending = false,
  });
}
