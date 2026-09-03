abstract class ReactionFailure {
  const ReactionFailure();
}

abstract class BaseReactionInfrastructureFailure extends ReactionFailure {
  const BaseReactionInfrastructureFailure();
}

abstract class BaseReactionServerFailure extends ReactionFailure {
  const BaseReactionServerFailure();
}

abstract class BaseReactionDataIntegrityFailure
    extends BaseReactionServerFailure {
  const BaseReactionDataIntegrityFailure();
}

abstract class BaseReactionModelParsingFailure
    extends BaseReactionServerFailure {
  const BaseReactionModelParsingFailure();
}

abstract class BaseReactionServerValidationFailure
    extends BaseReactionServerFailure {
  const BaseReactionServerValidationFailure();
}

abstract class BaseReactionDomainFailure extends ReactionFailure {
  const BaseReactionDomainFailure();
}

abstract class BaseReactionValidationFailure extends BaseReactionDomainFailure {
  const BaseReactionValidationFailure();
}

abstract class BaseReactionAuthFailure extends BaseReactionDomainFailure {
  const BaseReactionAuthFailure();
}

abstract class BaseReactionNotFoundFailure extends BaseReactionDomainFailure {
  const BaseReactionNotFoundFailure();
}

class ReactionUnknownFailure extends ReactionFailure {
  const ReactionUnknownFailure();
}
