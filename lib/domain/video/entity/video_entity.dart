import 'package:baladeston/core/enum/video/video_level.dart';
import 'package:baladeston/core/enum/video/video_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_entity.freezed.dart';

@freezed
abstract class VideoEntity with _$VideoEntity {
  const factory VideoEntity({
    int? id,
    String? thumbnailUrl,
    VideoStatus? status,
    int? videoDuration,
    DateTime? uploadedAt,
    DateTime? lastTransaction,
    double? avgRate,
    int? rateCount,
    required String videoUrl,
    required int recommendedAge,
    required VideoLevel level,
    required String title,
    required int ownerId,
    required String description,
    required int price,
  }) = _VideoEntity;
}
