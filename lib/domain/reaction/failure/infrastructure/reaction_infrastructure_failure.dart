import 'package:baladeston/domain/reaction/failure/base_reaction_failure.dart';

abstract class ReactionInfrastructureFailure
    extends BaseReactionInfrastructureFailure {
  const ReactionInfrastructureFailure();
}

class ReactionNetworkFailure extends ReactionInfrastructureFailure {
  const ReactionNetworkFailure();
}

class ReactionTimeoutFailure extends ReactionInfrastructureFailure {
  const ReactionTimeoutFailure();
}

class ReactionServerFailure extends ReactionInfrastructureFailure {
  const ReactionServerFailure();
}

class ReactionServerUnavailableFailure extends ReactionInfrastructureFailure {
  const ReactionServerUnavailableFailure();
}

class ReactionBadRequestFailure extends ReactionInfrastructureFailure {
  const ReactionBadRequestFailure();
}

class ReactionUnauthorizedInfrastructureFailure
    extends ReactionInfrastructureFailure {
  const ReactionUnauthorizedInfrastructureFailure();
}

class ReactionForbiddenInfrastructureFailure
    extends ReactionInfrastructureFailure {
  const ReactionForbiddenInfrastructureFailure();
}

class ReactionConflictFailure extends ReactionInfrastructureFailure {
  const ReactionConflictFailure();
}

class ReactionRateLimitFailure extends ReactionInfrastructureFailure {
  const ReactionRateLimitFailure();
}

class ReactionInvalidDataFailure extends ReactionInfrastructureFailure {
  const ReactionInvalidDataFailure();
}
