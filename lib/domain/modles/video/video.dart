// class Video {
//   final int id;
//   final String title;
//   final String? description;
//   final String videoUrl;
//   final String? thumbnailUrl;
//   final String status;
//   final int uploaderId;
//   final int collectionId;
//   final DateTime uploadedAt;

//   const Video({
//     required this.id,
//     required this.title,
//     this.description,
//     required this.videoUrl,
//     this.thumbnailUrl,
//     required this.status,
//     required this.uploaderId,
//     required this.collectionId,
//     required this.uploadedAt,
//   });
// }


import 'package:freezed_annotation/freezed_annotation.dart';

part 'video.freezed.dart';
part 'video.g.dart';

@unfreezed
class Video with _$Video {
  @JsonSerializable(explicitToJson: true)
  factory Video({
    required int id,
    required String title,
    String? description,
    required String videoUrl,
    String? thumbnailUrl,
    required String status,
    required int uploaderId,
    required int collectionId,
    required DateTime uploadedAt,
  }) = _Video;

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);
}
