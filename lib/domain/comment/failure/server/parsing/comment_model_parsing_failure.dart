import 'package:baladeston/domain/comment/failure/base_comment_failure.dart';

class CommentModelParsingFailure extends BaseCommentModelParsingFailure {
  final String? debugMessage;
  final String? rawSource;

  const CommentModelParsingFailure({
    this.debugMessage,
    this.rawSource,
  });
}
