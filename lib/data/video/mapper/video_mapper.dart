import 'package:baladeston/data/video/model/video_model.dart';
import 'package:baladeston/domain/video/entity/video_entity.dart';

extension VideoModelMapper on VideoModel {
  VideoEntity toEntity() {
    return VideoEntity(
      id: id,
      title: title,
      description: description,
      videoUrl: videoUrl,
      thumbnailUrl: thumbnailUrl,
      status: status,
      ownerId: ownerId,
      uploadedAt: uploadedAt,
      videoDuration: videoDuration,
      recommendedAge: recommendedAge,
      level: level,
      price: price,
    );
  }
}

extension VideoEntityMapper on VideoEntity {
  VideoModel toModel() {
    return VideoModel(
      id: id,
      title: title,
      description: description,
      videoUrl: videoUrl,
      thumbnailUrl: thumbnailUrl,
      status: status,
      uploadedAt: uploadedAt,
      videoDuration: videoDuration,
      ownerId: ownerId,
      recommendedAge: recommendedAge,
      level: level,
      price: price,
    );
  }
}
