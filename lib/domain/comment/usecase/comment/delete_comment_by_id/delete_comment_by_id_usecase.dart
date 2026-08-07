import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/Comment/failure/base_Comment_failure.dart';
import 'package:baladeston/domain/comment/repository/comment/comment_repository.dart';
import 'package:baladeston/domain/comment/usecase/delete_comment_by_id/delete_comment_by_id_usecase_business_rule.dart';

class DeleteCommentByIdUseCase {
  final CommentRepository repository;

  const DeleteCommentByIdUseCase({required this.repository});

  Future<Result<int, CommentFailure>> call({required int id}) async {
    final businessRule = DeleteCommentByIdUseCaseBusinessRule(id: id);
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.deleteCommentById(id: id),
      failure: (failure) => Result.failure(failure),
    );
  }
}
