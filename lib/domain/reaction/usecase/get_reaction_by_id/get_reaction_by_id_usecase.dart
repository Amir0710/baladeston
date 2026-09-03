import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/reaction/entity/reaction/reaction_entity.dart';
import 'package:baladeston/domain/reaction/failure/base_reaction_failure.dart';
import 'package:baladeston/domain/reaction/repository/reaction/reaction_repository.dart';
import 'package:baladeston/domain/reaction/usecase/get_reaction_by_id/get_reaction_by_id_usecase_business_rule.dart';

class GetReactionByIdUseCase {
  final ReactionRepository repository;

  const GetReactionByIdUseCase({
    required this.repository,
  });

  Future<Result<ReactionEntity, ReactionFailure>> call({
    required int id,
  }) async {
    final businessRule = GetReactionByIdUseCaseBusinessRule(id: id);
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.getReactionById(id: id),
      failure: (failure) => Result.failure(failure),
    );
  }
}
