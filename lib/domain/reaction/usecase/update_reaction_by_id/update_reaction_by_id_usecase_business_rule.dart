import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/reaction/entity/reaction/reaction_entity.dart';
import 'package:baladeston/domain/reaction/failure/base_reaction_failure.dart';
import 'package:baladeston/domain/reaction/failure/domain/validation/reaction_entity_failure.dart';

class UpdateReactionByIdUseCaseBusinessRule {
  final int id;
  final ReactionEntity reaction;

  const UpdateReactionByIdUseCaseBusinessRule({
    required this.id,
    required this.reaction,
  });

  Result<void, ReactionFailure> validate() {
    if (id <= 0) {
      return const Result.failure(ReactionEntityInvalidTargetIdFailure());
    }
    if (reaction.userId <= 0) {
      return const Result.failure(ReactionEntityInvalidUserIdFailure());
    }
    return const Result.success(null);
  }
}
