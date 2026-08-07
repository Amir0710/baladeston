
import 'package:baladeston/core/enum/comment/comment_status.dart';
import 'package:baladeston/core/enum/comment/comment_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_entity.freezed.dart';

@freezed
abstract class CommentEntity with _$CommentEntity {
  const factory CommentEntity({
    required int userId,
    required CommentType targetType,
    required int targetId,
    required double rating,
    DateTime? createdAt,
    DateTime? updatedAt,
    CommentStatus? status,
    String? content,

  }) = _CommentEntity;
}
