import 'package:baladeston/domain/comment/entity/comment/comment_entity.dart';
import 'package:baladeston/domain/comment/exception/comment_entity_exception.dart';
import 'package:baladeston/domain/comment/exception/comment_id_exception.dart';

class UpdateCommentByIdUseCaseBusinessRule {
  final CommentEntity comment;
  final int id;

  const UpdateCommentByIdUseCaseBusinessRule({
    required this.comment,
    required this.id,
  });

  void validate() {
    if (id <= 0) {
      throw CommentIdInvalidException();
    }

    if (comment.content == null) {
      throw CommentEntityNoUpdatableFieldsException();
    }
  }
}
