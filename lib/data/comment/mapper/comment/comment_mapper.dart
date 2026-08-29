import 'package:baladeston/data/comment/model/comment_model.dart';
import 'package:baladeston/domain/comment/entity/comment/comment_entity.dart';

extension CommentModelMapper on CommentModel {
  CommentEntity toEntity() {
    return CommentEntity(
      ownerId: ownerId,
      targetId: targetId,
      content: content,
      rating: rating,
      createdAt: createdAt,
      updatedAt: updatedAt,
      status: status,
      targetType: targetType,

    );
  }
}

extension CommentEntityMapper on CommentEntity {
  CommentModel toModel() {
    return CommentModel(
      ownerId: ownerId,
      targetId: targetId,
      content: content,
      rating: rating,
      createdAt: createdAt,
      updatedAt: updatedAt,
      status: status,
      targetType: targetType,

    );
  }
}
