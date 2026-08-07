abstract class CommentFailure {
  const CommentFailure();
}


abstract class BaseCommentInfrastructureFailure extends CommentFailure {
  const BaseCommentInfrastructureFailure();
}


abstract class BaseCommentDomainFailure extends CommentFailure {
  const BaseCommentDomainFailure();
}


abstract class BaseCommentValidationFailure
    extends BaseCommentDomainFailure {
  const BaseCommentValidationFailure();
}


abstract class BaseCommentAuthFailure extends BaseCommentDomainFailure {
  const BaseCommentAuthFailure();
}


abstract class BaseCommentNotFoundFailure
    extends BaseCommentDomainFailure {
  const BaseCommentNotFoundFailure();
}


class CommentUnknownFailure extends CommentFailure {
  const CommentUnknownFailure();
}
