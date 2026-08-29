
import 'package:baladeston/data/comment/api/error_codes/comment/comment_id_error_code.dart' as codes;
import 'package:baladeston/domain/comment/failure/base_comment_failure.dart';
import 'package:baladeston/domain/comment/failure/server/code/comment_model_id_failure.dart';

class CommentIdCodeMapper {
  const CommentIdCodeMapper();

  static final Map<String, CommentFailure Function()> _map = {
    codes.CommentIdErrorCodes.required: () =>
        const CommentModelIdMissingFailure(),
    codes.CommentIdErrorCodes.invalid: () =>
        const CommentModelIdInvalidFailure(),
  };

  static CommentFailure? map(String? code) {
    if (code == null) return null;
    final factory = _map[code];
    return factory?.call();
  }
}