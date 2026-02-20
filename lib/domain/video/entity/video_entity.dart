import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_entity.freezed.dart';

@freezed
abstract class VideoEntity with _$VideoEntity {
  const factory VideoEntity({
    int? id,
    String? description,
    String? videoUrl,
    String? thumbnailUrl,
    String? status,
    int? requiredAge,
    int? videoDuration,
    required String title,
    required int uploaderId,
    required int categoryId,
    DateTime? uploadedAt,
  }) = _VideoEntity;
}
