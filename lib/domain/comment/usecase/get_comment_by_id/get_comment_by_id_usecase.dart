import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/comment/entity/comment_entity.dart';
import 'package:baladeston/domain/comment/failure/comment_failure.dart';
import 'package:baladeston/domain/comment/repository/comment_repository.dart';

class GetCommentByIdUseCase {
  final CommentRepository repository;

  GetCommentByIdUseCase(this.repository);

  Future<Result<CommentEntity, CommentFailure>> call({required int id}) {
    return repository.getCommentById(id: id);
  }
}
