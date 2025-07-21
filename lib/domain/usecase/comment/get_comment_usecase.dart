import 'package:baladeston/domain/entitys/comment/comment.dart';
import 'package:baladeston/domain/filters/comment_query_filter.dart';
import 'package:baladeston/domain/repositories/comment_repository.dart';

class GetCommentUseCase {
  final CommentRepository repository;

  GetCommentUseCase(this.repository);

  Future<List<Comment>?> call(CommentQueryFilter filter) {
    return repository.getComment(filter: filter);
  }
}
