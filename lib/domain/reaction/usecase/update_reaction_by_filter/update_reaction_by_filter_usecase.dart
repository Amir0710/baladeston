import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/reaction/filter/reaction/reaction_query_filter.dart';
import 'package:baladeston/domain/reaction/entity/reaction/reaction_entity.dart';
import 'package:baladeston/domain/reaction/failure/base_reaction_failure.dart';
import 'package:baladeston/domain/reaction/repository/reaction/reaction_repository.dart';
import 'package:baladeston/domain/reaction/usecase/update_reaction_by_filter/update_reaction_by_filter_usecase_business_rule.dart';

class UpdateReactionByFilterUseCase {
  final ReactionRepository repository;

  const UpdateReactionByFilterUseCase({
    required this.repository,
  });

  Future<Result<ReactionEntity, ReactionFailure>> call({
    required ReactionQueryFilter filter,
    required ReactionEntity reaction,
  }) async {
    final businessRule = UpdateReactionByFilterUseCaseBusinessRule(
      filter: filter,
      reaction: reaction,
    );
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.updateReactionByFilter(
        filter: filter,
        reaction: reaction,
      ),
      failure: (failure) => Result.failure(failure),
    );
  }
}
