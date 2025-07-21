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


import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

@freezed
abstract class Comment with _$Comment {

  factory Comment({
      required int userId,
  required int targetId,
  required String content,
  required double rating,
  required DateTime createdAt,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) => _$CommentFromJson(json);
}