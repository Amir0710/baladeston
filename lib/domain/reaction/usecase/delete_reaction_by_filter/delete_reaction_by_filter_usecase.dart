import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/reaction/filter/reaction/reaction_query_filter.dart';
import 'package:baladeston/domain/reaction/failure/base_reaction_failure.dart';
import 'package:baladeston/domain/reaction/repository/reaction/reaction_repository.dart';
import 'package:baladeston/domain/reaction/usecase/delete_reaction_by_filter/delete_reaction_by_filter_usecase_business_rule.dart';

class DeleteReactionByFilterUseCase {
  final ReactionRepository repository;

  const DeleteReactionByFilterUseCase({
    required this.repository,
  });

  Future<Result<List<int>, ReactionFailure>> call({
    required ReactionQueryFilter filter,
  }) async {
    final businessRule =
        DeleteReactionByFilterUseCaseBusinessRule(filter: filter);
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.deleteReactionByFilter(filter: filter),
      failure: (failure) => Result.failure(failure),
    );
  }
}
