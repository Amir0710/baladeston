import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_model.freezed.dart';
part 'video_model.g.dart';

@freezed
abstract class VideoModel with _$VideoModel {
  const factory VideoModel({
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
  }) = _VideoModel;

  factory VideoModel.fromJson(Map<String, dynamic> json) =>
      _$VideoModelFromJson(json);
}
