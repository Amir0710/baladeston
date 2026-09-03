import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/reaction/filter/reaction/reaction_query_filter.dart';
import 'package:baladeston/domain/reaction/failure/base_reaction_failure.dart';
import 'package:baladeston/domain/reaction/repository/reaction/reaction_repository.dart';
import 'package:baladeston/domain/reaction/usecase/count_reaction/count_reaction_usecase_business_rule.dart';

class CountReactionUseCase {
  final ReactionRepository repository;

  const CountReactionUseCase({
    required this.repository,
  });

  Future<Result<int, ReactionFailure>> call({
    required ReactionQueryFilter filter,
  }) async {
    final businessRule = CountReactionUseCaseBusinessRule(filter: filter);
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.countReaction(filter: filter),
      failure: (failure) => Result.failure(failure),
    );
  }
}
