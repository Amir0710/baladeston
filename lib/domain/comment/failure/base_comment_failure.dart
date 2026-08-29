abstract class CommentFailure {
  const CommentFailure();
}

abstract class BaseCommentInfrastructureFailure extends CommentFailure {
  const BaseCommentInfrastructureFailure();
}

abstract class BaseCommentServerFailure extends CommentFailure {
  const BaseCommentServerFailure();
}

abstract class BaseCommentDataIntegrityFailure
    extends BaseCommentServerFailure {
  const BaseCommentDataIntegrityFailure();
}

abstract class BaseCommentModelParsingFailure
    extends BaseCommentServerFailure {
  const BaseCommentModelParsingFailure();
}

abstract class BaseCommentServerValidationFailure
    extends BaseCommentServerFailure {
  const BaseCommentServerValidationFailure();
}

abstract class BaseCommentDomainFailure extends CommentFailure {
  const BaseCommentDomainFailure();
}

abstract class BaseCommentValidationFailure extends BaseCommentDomainFailure {
  const BaseCommentValidationFailure();
}

abstract class BaseCommentAuthFailure extends BaseCommentDomainFailure {
  const BaseCommentAuthFailure();
}

abstract class BaseCommentNotFoundFailure extends BaseCommentDomainFailure {
  const BaseCommentNotFoundFailure();
}

class CommentUnknownFailure extends CommentFailure {
  const CommentUnknownFailure();
}
