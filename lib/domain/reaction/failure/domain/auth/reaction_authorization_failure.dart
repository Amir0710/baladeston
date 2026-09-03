import 'package:baladeston/domain/reaction/failure/base_reaction_failure.dart';

abstract class ReactionAuthorizationFailure extends BaseReactionAuthFailure {
  const ReactionAuthorizationFailure();
}

class ReactionAccessForbiddenFailure extends ReactionAuthorizationFailure {
  const ReactionAccessForbiddenFailure();
}

class ReactionAccessAdminRequiredFailure extends ReactionAuthorizationFailure {
  const ReactionAccessAdminRequiredFailure();
}
