

import 'package:baladeston/data/models/video/video_model.dart';
import 'package:baladeston/domain/entitys/video/video_entity.dart';

extension VideoModelMapper on VideoModel {
  VideoEntity toEntity() {
    return VideoEntity(
      id: id,
      title: title,
      description: description,
      videoUrl: videoUrl,
      thumbnailUrl: thumbnailUrl,
      status: status,
      uploaderId: uploaderId,
      categoryId: categoryId,
      uploadedAt: uploadedAt,
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
      uploaderId: uploaderId,
      categoryId: categoryId,
      uploadedAt: uploadedAt,
    );
  }
}
