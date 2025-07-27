// class Video {
  // final int id;
  // final String title;
  // final String? description;
  // final String videoUrl;
  // final String? thumbnailUrl;
  // final String status;
  // final int uploaderId;
  // final int categoryId;
  // final DateTime uploadedAt;

//   const Video({
//     required this.id,
//     required this.title,
//     this.description,
//     required this.videoUrl,
//     this.thumbnailUrl,
//     required this.status,
//     required this.uploaderId,
//     required this.categoryId,
//     required this.uploadedAt,
//   });
// }




// domain/entities/video_entity.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_entity.freezed.dart';

@freezed
abstract class VideoEntity with _$VideoEntity {
  const factory VideoEntity({
    required int id,
    required String title,
    required String? description,
    required String videoUrl,
    required String? thumbnailUrl,
    required String status,
    required int uploaderId,
    required int categoryId,
    required DateTime uploadedAt,
  }) = _VideoEntity;
}
