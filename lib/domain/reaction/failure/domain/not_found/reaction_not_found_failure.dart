import 'package:baladeston/domain/reaction/failure/base_reaction_failure.dart';

class ReactionNotFoundFailure extends BaseReactionNotFoundFailure {
  const ReactionNotFoundFailure();
}

class ReactionModelNotFoundFailure extends ReactionNotFoundFailure {
  const ReactionModelNotFoundFailure();
}
