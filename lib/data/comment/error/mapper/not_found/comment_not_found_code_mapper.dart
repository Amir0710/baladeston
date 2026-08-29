import 'package:baladeston/data/comment/api/error_codes/not_found/comment_not_found_error_code.dart'
    as codes;
import 'package:baladeston/domain/comment/failure/base_comment_failure.dart';
import 'package:baladeston/domain/comment/failure/domain/not_found/comment_not_found_failure.dart';

final class CommentNotFoundCodeMapper {
  const CommentNotFoundCodeMapper();

  static final Map<String, CommentFailure Function()> _registry = {
    // comment
    codes.CommentNotFoundErrorCode.commentNotFound: () =>
        const CommentModelNotFoundFailure(),
  };

  static CommentFailure? map(String? code) {
    if (code == null) return null;
    return _registry[code]?.call();
  }
}
