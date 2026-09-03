import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/reaction/filter/reaction/reaction_query_filter.dart';
import 'package:baladeston/domain/reaction/entity/reaction/reaction_entity.dart';
import 'package:baladeston/domain/reaction/failure/base_reaction_failure.dart';
import 'package:baladeston/domain/reaction/failure/domain/validation/reaction_entity_failure.dart';

class UpdateReactionByFilterUseCaseBusinessRule {
  final ReactionQueryFilter filter;
  final ReactionEntity reaction;

  const UpdateReactionByFilterUseCaseBusinessRule({
    required this.filter,
    required this.reaction,
  });

  Result<void, ReactionFailure> validate() {
    if (reaction.userId <= 0) {
      return const Result.failure(ReactionEntityInvalidUserIdFailure());
    }
    return const Result.success(null);
  }
}
