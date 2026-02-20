import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/comment/filter/comment_query_filter.dart';
import 'package:baladeston/domain/comment/failure/comment_failure.dart';
import 'package:baladeston/domain/comment/repository/comment_repository.dart';

class CountCommentUseCase {
  final CommentRepository repository;

  CountCommentUseCase(this.repository);

  Future<Result<int, CommentFailure>> call({required CommentQueryFilter filter}) {
    return repository.countAllComment(filter : filter );
  }
}
