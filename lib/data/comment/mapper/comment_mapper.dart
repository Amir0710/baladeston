import 'package:baladeston/data/comment/model/comment_model.dart';
import 'package:baladeston/domain/comment/entity/comment_entity.dart';

extension CommentModelMapper on CommentModel {
  CommentEntity toEntity() {
    return CommentEntity(
        userId: userId,
        targetId: targetId,
        content: content,
        rating: rating,
        createdAt: createdAt,
        updatedAt: updatedAt,
        status: status);
  }
}

extension CommentEntityMapper on CommentEntity {
  CommentModel toModel() {
    return CommentModel(
      userId: userId,
      targetId: targetId,
      content: content,
      rating: rating,
      createdAt: createdAt,
      updatedAt: updatedAt,
      status: status,
    );
  }
}
