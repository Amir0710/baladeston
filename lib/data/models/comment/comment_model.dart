
import 'package:baladeston/domain/entitys/comment/comment.dart';
import 'package:json_annotation/json_annotation.dart';

part 'comment_model.g.dart';

@JsonSerializable()
class CommentModel {
  final int userId;
  final int targetId;
  final String content;
  final double rating;
  final DateTime createdAt;

  const CommentModel({
    required this.userId,
    required this.targetId,
    required this.content,
    required this.rating,
    required this.createdAt,
  });

  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);

  Map<String, dynamic> toJson() => _$CommentModelToJson(this);

  /// تبدیل به entity
  Comment toDomain() => Comment(
        userId: userId,
        targetId: targetId,
        content: content,
        rating: rating,
        createdAt: createdAt,
      );

  /// ساخت مدل از روی entity
  factory CommentModel.fromDomain(Comment comment) => CommentModel(
        userId: comment.userId,
        targetId: comment.targetId,
        content: comment.content,
        rating: comment.rating,
        createdAt: comment.createdAt,
      );
}
