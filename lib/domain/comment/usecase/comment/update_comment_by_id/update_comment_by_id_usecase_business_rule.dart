import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/core/variable/text_content_guard.dart';
import 'package:baladeston/domain/comment/entity/comment/comment_entity.dart';
import 'package:baladeston/domain/comment/failure/base_comment_failure.dart';
import 'package:baladeston/domain/comment/failure/domain/validation/comment_entity_failure.dart';
import 'package:baladeston/domain/comment/failure/domain/validation/comment_id_failure.dart';

class UpdateCommentByIdUseCaseBusinessRule {
  final CommentEntity comment;
  final int id;
  static const Limits _limits = Limits();


  const UpdateCommentByIdUseCaseBusinessRule({
    required this.comment,
    required this.id,
  });

  Result<void, CommentFailure> validate() {
    late Result<void, CommentFailure> result;

    _idValidation().when(
      success: (_) {
        result = _entityValidation();
      },
      failure: (failure) {
        result = Result.failure(failure);
      },
    );

    return result;
  }

  Result<void, CommentFailure> _idValidation() {
    if (id <= 0) {
      return const Result.failure(CommentIdInvalidFailure());
    }
    return const Result.success(null);
  }

  Result<void, CommentFailure> _entityValidation() {
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
