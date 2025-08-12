import 'package:baladeston/domain/repositories/comment_repository.dart';

class DeleteCommentByIdUseCase {
  final CommentRepository repository;

  DeleteCommentByIdUseCase(this.repository);

  Future<void> call({
    required int id,
  }) {
    return repository.deleteCommentById(id: id);
  }
}
