import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/comment/failure/base_comment_failure.dart';
import 'package:baladeston/domain/comment/entity/comment/comment_entity.dart';
import 'package:baladeston/domain/comment/repository/comment/comment_repository.dart';
import 'package:baladeston/domain/comment/usecase/comment/get_comment_by_id/get_comment_by_id_usecase_business_rule.dart';

class GetCommentByIdUseCase {
  final CommentRepository repository;

  const GetCommentByIdUseCase({required this.repository});

  Future<Result<CommentEntity, CommentFailure>> call({
    required int id,
  }) async {
    final businessRule = GetCommentByIdUseCaseBusinessRule(id: id);
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.getCommentById(id: id),
      failure: (failure) => Result.failure(failure),
    );
  }
}
