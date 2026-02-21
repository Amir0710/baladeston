import 'package:baladeston/domain/comment/exception/comment_id_exception.dart';

class DeleteCommentByIdUseCaseBusinessRule {
  final int id;

  const DeleteCommentByIdUseCaseBusinessRule({
    required this.id,
  });

  void validate() {
    if (id <= 0) {
      throw CommentIdInvalidException();
    }
  }
}
