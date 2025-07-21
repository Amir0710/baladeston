
import 'package:baladeston/domain/entitys/video/video.dart';
import 'package:json_annotation/json_annotation.dart';

part 'video_model.g.dart';

@JsonSerializable()
class VideoModel {
  final int id;
  final String title;
  final String? description;
  final String videoUrl;
  final String? thumbnailUrl;
  final String status;
  final int uploaderId;
  final int collectionId;
  final DateTime uploadedAt;

  const VideoModel({
    required this.id,
    required this.title,
    this.description,
    required this.videoUrl,
    this.thumbnailUrl,
    required this.status,
    required this.uploaderId,
    required this.collectionId,
    required this.uploadedAt,
  });

  factory VideoModel.fromJson(Map<String, dynamic> json) =>
      _$VideoModelFromJson(json);

  Map<String, dynamic> toJson() => _$VideoModelToJson(this);

  /// تبدیل به domain entity
  Video toDomain() => Video(
        id: id,
        title: title,
        description: description,
        videoUrl: videoUrl,
        thumbnailUrl: thumbnailUrl,
        status: status,
        uploaderId: uploaderId,
        collectionId: collectionId,
        uploadedAt: uploadedAt,
      );

  /// ساخت مدل از domain entity
  factory VideoModel.fromDomain(Video video) => VideoModel(
        id: video.id,
        title: video.title,
        description: video.description,
        videoUrl: video.videoUrl,
        thumbnailUrl: video.thumbnailUrl,
        status: video.status,
        uploaderId: video.uploaderId,
        collectionId: video.collectionId,
        uploadedAt: video.uploadedAt,
      );
}
