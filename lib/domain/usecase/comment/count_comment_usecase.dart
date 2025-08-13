import 'package:baladeston/domain/filters/comment_query_filter.dart';
import 'package:baladeston/domain/repositories/comment_repository.dart';

class CountCommentUseCase {
  final CommentRepository repository;

  CountCommentUseCase(this.repository);

  Future<int> call({required CommentQueryFilter filter}) {
    return repository.countComment(filter : filter );
  }
}
