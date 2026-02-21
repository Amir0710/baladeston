import 'package:baladeston/domain/comment/exception/comment_id_exception.dart';

class GetCommentByIdUseCaseBusinessRule {
  final int id;

  const GetCommentByIdUseCaseBusinessRule({
    required this.id,
  });

  void validate() {
    if (id <= 0) {
      throw CommentIdInvalidException();
    }
  }
}
