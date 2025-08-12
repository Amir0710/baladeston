import 'package:baladeston/domain/filters/comment_query_filter.dart';
import 'package:baladeston/domain/repositories/comment_repository.dart';

class DeleteCommentByFilterUseCase {
  final CommentRepository repository;

  DeleteCommentByFilterUseCase(this.repository);

  Future<void> call({
    required CommentQueryFilter  filter,
  }) {
    return repository.deleteCommentByFilter(filter: filter, );
  }
}
