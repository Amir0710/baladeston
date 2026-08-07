import 'package:baladeston/domain/comment/entity/comment/comment_entity.dart';
import 'package:baladeston/domain/comment/exception/comment_entity_exception.dart';

class CreateCommentUseCaseBusinessRule {
  final CommentEntity comment;

  const CreateCommentUseCaseBusinessRule({
    required this.comment,
  });

  void validate() {
    if (comment.userId == null) {
      throw CommentEntityUserRequiredException();
    }

    if (comment.targetId == null) {
      throw CommentEntityTargetRequiredException();
    }

    if (comment.content == null || comment.content!.isEmpty) {
      throw CommentEntityContentRequiredException();
    }
  }
}
