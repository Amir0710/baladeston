import 'package:baladeston/domain/comment/failure/base_comment_failure.dart';

abstract class CommentInfrastructureFailure
    extends BaseCommentInfrastructureFailure {
  const CommentInfrastructureFailure();
}

class CommentNetworkFailure extends CommentInfrastructureFailure {
  const CommentNetworkFailure();
}

class CommentTimeoutFailure extends CommentInfrastructureFailure {
  const CommentTimeoutFailure();
}

class CommentServerFailure extends CommentInfrastructureFailure {
  const CommentServerFailure();
}

class CommentServerUnavailableFailure extends CommentInfrastructureFailure {
  const CommentServerUnavailableFailure();
}

class CommentBadRequestFailure extends CommentInfrastructureFailure {
  const CommentBadRequestFailure();
}

class CommentUnauthorizedInfrastructureFailure
    extends CommentInfrastructureFailure {
  const CommentUnauthorizedInfrastructureFailure();
}

class CommentForbiddenInfrastructureFailure
    extends CommentInfrastructureFailure {
  const CommentForbiddenInfrastructureFailure();
}

class CommentConflictFailure extends CommentInfrastructureFailure {
  const CommentConflictFailure();
}

class CommentRateLimitFailure extends CommentInfrastructureFailure {
  const CommentRateLimitFailure();
}

// parsing data
class CommentModelParsingFailure extends CommentInfrastructureFailure {
  final String? field;
  final String? message;

  const CommentModelParsingFailure({this.field, this.message});
}

// server validation
class CommentDataIntegrityFailure extends CommentInfrastructureFailure {
  final String? field;
  final String? message;

  const CommentDataIntegrityFailure({this.field, this.message});
}
