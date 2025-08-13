// data/mappers/comment_mapper.dart
import 'package:baladeston/data/models/comment/comment_model.dart';
import 'package:baladeston/domain/entitys/comment/comment_entity.dart';

extension CommentModelMapper on CommentModel {
  CommentEntity toEntity() {
    return CommentEntity(
      userId: userId,
      targetId: targetId,
      content: content,
      rating: rating,
      createdAt: createdAt, updatedAt: updatedAt,
    );
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
    );
  }
}
