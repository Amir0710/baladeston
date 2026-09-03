import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/reaction/entity/reaction/reaction_entity.dart';
import 'package:baladeston/domain/reaction/failure/base_reaction_failure.dart';
import 'package:baladeston/domain/reaction/repository/reaction/reaction_repository.dart';
import 'package:baladeston/domain/reaction/usecase/create_reaction/create_reaction_usecase_business_rule.dart';

class CreateReactionUseCase {
  final ReactionRepository repository;

  const CreateReactionUseCase({
    required this.repository,
  });

  Future<Result<ReactionEntity, ReactionFailure>> call({
    required ReactionEntity reaction,
  }) async {
    final businessRule = CreateReactionUseCaseBusinessRule(reaction: reaction);
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.createReaction(reaction: reaction),
      failure: (failure) => Result.failure(failure),
    );
  }
}
