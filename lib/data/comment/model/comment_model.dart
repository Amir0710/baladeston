import 'package:baladeston/core/enum/comment/comment_status.dart';
import 'package:baladeston/core/enum/comment/comment_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_model.freezed.dart';
part 'comment_model.g.dart';

@freezed
abstract class CommentModel with _$CommentModel {
const CommentModel._();
  const factory CommentModel({
    int? ownerId,
    required CommentType targetType,
    required int targetId,
    required double rating,
    String? content,
    DateTime? createdAt,
    DateTime? updatedAt,
    CommentStatus? status,

  }) = _CommentModel;

  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);
}
