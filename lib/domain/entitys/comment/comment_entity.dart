// class Comment {
//   final int userId;
//   final int targetId;
//   final String content;
//   final double rating;
//   final DateTime createdAt;

//   const Comment({
//     required this.userId,
//     required this.targetId,
//     required this.content,
//     required this.rating,
//     required this.createdAt,
//   });
// }

// domain/entities/comment_entity.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_entity.freezed.dart';

@freezed
abstract class CommentEntity with _$CommentEntity {
  const factory CommentEntity({
    required int userId,
    required int targetId,
    required String content,
    required double rating,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _CommentEntity;
}
