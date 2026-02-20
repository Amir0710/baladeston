import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/comment/failure/comment_failure.dart';
import 'package:baladeston/domain/comment/repository/comment_repository.dart';

class DeleteCommentByIdUseCase {
  final CommentRepository repository;

  DeleteCommentByIdUseCase(this.repository);

  Future<Result<int, CommentFailure>> call({
    required int id,
  }) {
    return repository.deleteCommentById(id: id);
  }
}
