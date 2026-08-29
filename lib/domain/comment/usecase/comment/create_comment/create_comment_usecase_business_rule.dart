import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/core/variable/text_content_guard.dart';
import 'package:baladeston/domain/comment/entity/comment/comment_entity.dart';
import 'package:baladeston/domain/comment/failure/base_comment_failure.dart';
import 'package:baladeston/domain/comment/failure/domain/validation/comment_entity_failure.dart';

class CreateCommentUseCaseBusinessRule {
  final CommentEntity comment;
  static const Limits _limits = Limits();

  const CreateCommentUseCaseBusinessRule({
    required this.comment,
  });

  Result<void, CommentFailure> validate() {
    return _entityValidation();
  }

  Result<void, CommentEntityFailure> _entityValidation() {
    final content = comment.content?.trim();
    // content
    if (content != null && content.isEmpty) {
      return const Result.failure(CommentEntityMissingContentFailure());
    }
    if (content != null && TextContentGuard.containsHtml(content)) {
      return const Result.failure(CommentEntityContainsHtmlContentFailure());
    }
    if (content != null && TextContentGuard.isEmojiOnly(content)) {
      return const Result.failure(CommentEntityEmojiOnlyContentFailure());
    }
    if (content != null && TextContentGuard.hasControlCharacters(content)) {
      return const Result.failure(CommentEntityControlCharContentFailure());
    }
    if (content != null && content.length < _limits.minCommentLength) {
      return const Result.failure(CommentEntityTooShortContentFailure());
    }
    if (content != null && content.length > _limits.maxCommentLength) {
      return const Result.failure(CommentEntityTooLongContentFailure());
    }

    return const Result.success(null);
  }
}
