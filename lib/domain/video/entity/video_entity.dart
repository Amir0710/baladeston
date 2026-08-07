import 'package:baladeston/core/enum/video/video_level.dart';
import 'package:baladeston/core/enum/video/video_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_entity.freezed.dart';

@freezed
abstract class VideoEntity with _$VideoEntity {
  const factory VideoEntity({
    int? id,
    String? description,
    String? thumbnailUrl,
    VideoStatus? status,
    int? videoDuration,
    DateTime? uploadedAt,
    required String videoUrl,
    required int recommendedAge,
    required VideoLevel level,
    required String title,
    required int ownerId,
    required int price,
  }) = _VideoEntity;
}
