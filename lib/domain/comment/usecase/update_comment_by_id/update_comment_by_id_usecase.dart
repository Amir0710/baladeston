import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/comment/entity/comment_entity.dart';
import 'package:baladeston/domain/comment/failure/comment_failure.dart';
import 'package:baladeston/domain/comment/repository/comment_repository.dart';

class UpdateCommentByIdUseCase {
  final CommentRepository repository;

  UpdateCommentByIdUseCase(this.repository);

  Future<Result<CommentEntity, CommentFailure>> call({required CommentEntity comment, required int id }) {
    return repository.updateCommentById(id:id , comment: comment);
  }
}
