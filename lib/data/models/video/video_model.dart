// data/models/video_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_model.freezed.dart';
part 'video_model.g.dart';

@freezed
abstract class VideoModel with _$VideoModel {
  const factory VideoModel({
    required int id,
    required String title,
    required String? description,
    required String videoUrl,
    required String? thumbnailUrl,
    required String status,
    required int uploaderId,
    required int categoryId,
    required DateTime uploadedAt,
  }) = _VideoModel;

  factory VideoModel.fromJson(Map<String, dynamic> json) =>
      _$VideoModelFromJson(json);
}
