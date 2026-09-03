import 'package:baladeston/domain/reaction/failure/base_reaction_failure.dart';

abstract class ReactionAuthenticationFailure extends BaseReactionAuthFailure {
  const ReactionAuthenticationFailure();
}

class ReactionAuthUnauthorizedFailure extends ReactionAuthenticationFailure {
  const ReactionAuthUnauthorizedFailure();
}

class ReactionAuthLoginRequiredFailure extends ReactionAuthenticationFailure {
  const ReactionAuthLoginRequiredFailure();
}

class ReactionAuthInvalidCredentialsFailure extends ReactionAuthenticationFailure {
  const ReactionAuthInvalidCredentialsFailure();
}
