import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/reaction/entity/reaction/reaction_entity.dart';
import 'package:baladeston/domain/reaction/failure/base_reaction_failure.dart';
import 'package:baladeston/domain/reaction/repository/reaction/reaction_repository.dart';
import 'package:baladeston/domain/reaction/usecase/update_reaction_by_id/update_reaction_by_id_usecase.dart';
import 'package:baladeston/domain/reaction/usecase/update_reaction_by_id/update_reaction_by_id_usecase_business_rule.dart';

class UpdateReactionByIdUseCase {
  final ReactionRepository repository;

  const UpdateReactionByIdUseCase({
    required this.repository,
  });

  Future<Result<ReactionEntity, ReactionFailure>> call({
    required int id,
    required ReactionEntity reaction,
  }) async {
    final businessRule = UpdateReactionByIdUseCaseBusinessRule(
      id: id,
      reaction: reaction,
    );
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.updateReactionById(
        id: id,
        reaction: reaction,
      ),
      failure: (failure) => Result.failure(failure),
    );
  }
}
