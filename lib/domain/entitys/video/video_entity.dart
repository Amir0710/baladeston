import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_entity.freezed.dart';

@freezed
abstract class VideoEntity with _$VideoEntity {
  const factory VideoEntity({
     int? id,
    required String title,
     String? description,
    required String videoUrl,
     String? thumbnailUrl,
     String? status,
    required int uploaderId,
    required int categoryId,
     DateTime? uploadedAt,
  }) = _VideoEntity;
}
