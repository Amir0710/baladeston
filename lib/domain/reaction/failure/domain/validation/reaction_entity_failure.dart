import 'package:baladeston/domain/reaction/failure/base_reaction_failure.dart';

abstract class ReactionEntityFailure extends BaseReactionValidationFailure {
  const ReactionEntityFailure();
}

class ReactionEntityInvalidUserIdFailure extends ReactionEntityFailure {
  const ReactionEntityInvalidUserIdFailure();
}

class ReactionEntityInvalidTargetIdFailure extends ReactionEntityFailure {
  const ReactionEntityInvalidTargetIdFailure();
}

class ReactionEntityInvalidReactionTypeFailure extends ReactionEntityFailure {
  const ReactionEntityInvalidReactionTypeFailure();
}

class ReactionEntityInvalidTargetTypeFailure extends ReactionEntityFailure {
  const ReactionEntityInvalidTargetTypeFailure();
}
