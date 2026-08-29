import 'package:baladeston/domain/comment/failure/base_comment_failure.dart';

class CommentDataIntegrityFailure extends BaseCommentDataIntegrityFailure {
  final String? debugMessage;
  final String? rawSource;

  const CommentDataIntegrityFailure({
    this.debugMessage,
    this.rawSource,
  });
}
