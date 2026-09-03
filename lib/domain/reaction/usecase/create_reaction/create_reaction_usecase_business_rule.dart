import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/reaction/entity/reaction/reaction_entity.dart';
import 'package:baladeston/domain/reaction/failure/base_reaction_failure.dart';
import 'package:baladeston/domain/reaction/failure/domain/validation/reaction_entity_failure.dart';

class CreateReactionUseCaseBusinessRule {
  final ReactionEntity reaction;

  const CreateReactionUseCaseBusinessRule({
    required this.reaction,
  });

  Result<void, ReactionFailure> validate() {
    return _entityValidation();
  }

  Result<void, ReactionFailure> _entityValidation() {
    // userId
    if (reaction.userId <= 0) {
      return const Result.failure(ReactionEntityInvalidUserIdFailure());
    }

    // targetId
    if (reaction.targetId <= 0) {
      return const Result.failure(ReactionEntityInvalidTargetIdFailure());
    }

    return const Result.success(null);
  }
}
