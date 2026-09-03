import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/reaction/failure/base_reaction_failure.dart';
import 'package:baladeston/domain/reaction/repository/reaction/reaction_repository.dart';
import 'package:baladeston/domain/reaction/usecase/delete_reaction_by_id/delete_reaction_by_id_usecase_business_rule.dart';

class DeleteReactionByIdUseCase {
  final ReactionRepository repository;

  const DeleteReactionByIdUseCase({
    required this.repository,
  });

  Future<Result<int, ReactionFailure>> call({
    required int id,
  }) async {
    final businessRule = DeleteReactionByIdUseCaseBusinessRule(id: id);
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.deleteReactionById(id: id),
      failure: (failure) => Result.failure(failure),
    );
  }
}
