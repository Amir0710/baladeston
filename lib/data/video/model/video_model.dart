import 'package:baladeston/core/enum/video/video_level.dart';
import 'package:baladeston/core/enum/video/video_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_model.freezed.dart';
part 'video_model.g.dart';

@freezed
abstract class VideoModel with _$VideoModel {
  const factory VideoModel({
    int? id,
    String? thumbnailUrl,
    VideoStatus? status,
    int? videoDuration,
    DateTime? uploadedAt,
    DateTime? lastTransaction,
    required String videoUrl,
    required int recommendedAge,
    required VideoLevel level,
    required String title,
    required int ownerId,
    required String description,
    required int price,
  }) = _VideoModel;

  factory VideoModel.fromJson(Map<String, dynamic> json) =>
      _$VideoModelFromJson(json);
}
