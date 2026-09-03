import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/reaction/filter/reaction/reaction_query_filter.dart';
import 'package:baladeston/domain/reaction/entity/reaction/reaction_entity.dart';
import 'package:baladeston/domain/reaction/failure/base_reaction_failure.dart';
import 'package:baladeston/domain/reaction/repository/reaction/reaction_repository.dart';
import 'package:baladeston/domain/reaction/usecase/get_reaction_by_filter/get_reaction_by_filter_usecase_business_rule.dart';

class GetReactionByFilterUseCase {
  final ReactionRepository repository;

  const GetReactionByFilterUseCase({
    required this.repository,
  });

  Future<Result<List<ReactionEntity>, ReactionFailure>> call({
    required ReactionQueryFilter filter,
  }) async {
    final businessRule = GetReactionByFilterUseCaseBusinessRule(filter: filter);
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.getReactionByFilter(filter: filter),
      failure: (failure) => Result.failure(failure),
    );
  }
}
