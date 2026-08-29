import 'package:baladeston/data/video/model/video_model.dart';
import 'package:baladeston/domain/video/entity/video_entity.dart';

extension VideoModelMapper on VideoModel {
  VideoEntity toEntity() {
    return VideoEntity(
      id: id,
      thumbnailUrl: thumbnailUrl,
      status: status,
      videoDuration: videoDuration,
      uploadedAt: uploadedAt,
      lastTransaction: lastTransaction,
      videoUrl: videoUrl,
      recommendedAge: recommendedAge,
      level: level,
      title: title,
      ownerId: ownerId,
      description: description,
      price: price,
    );
  }
}

extension VideoEntityMapper on VideoEntity {
  VideoModel toModel() {
    return VideoModel(
      id: id,
      thumbnailUrl: thumbnailUrl,
      status: status,
      videoDuration: videoDuration,
      uploadedAt: uploadedAt,
      lastTransaction: lastTransaction,
      videoUrl: videoUrl,
      recommendedAge: recommendedAge,
      level: level,
      title: title,
      ownerId: ownerId,
      description: description,
      price: price,
    );
  }
}
