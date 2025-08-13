import 'package:baladeston/domain/entitys/comment/comment_entity.dart';
import 'package:baladeston/domain/repositories/comment_repository.dart';

class GetCommentByIdUseCase {
  final CommentRepository repository;

  GetCommentByIdUseCase(this.repository);

  Future<CommentEntity?> call({required int id}) {
    return repository.getCommentById(id: id);
  }
}
