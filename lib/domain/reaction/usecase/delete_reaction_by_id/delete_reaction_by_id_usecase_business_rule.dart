import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/reaction/failure/base_reaction_failure.dart';
import 'package:baladeston/domain/reaction/failure/domain/validation/reaction_entity_failure.dart';

class DeleteReactionByIdUseCaseBusinessRule {
  final int id;

  const DeleteReactionByIdUseCaseBusinessRule({
    required this.id,
  });

  Result<void, ReactionFailure> validate() {
    if (id <= 0) {
      return const Result.failure(ReactionEntityInvalidTargetIdFailure());
    }
    return const Result.success(null);
  }
}
