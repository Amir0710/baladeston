import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/comment/filter/comment_query_filter.dart';
import 'package:baladeston/domain/comment/entity/comment_entity.dart';
import 'package:baladeston/domain/comment/failure/comment_failure.dart';
import 'package:baladeston/domain/comment/repository/comment_repository.dart';

class GetCommentByFilterUseCase {
  final CommentRepository repository;

  GetCommentByFilterUseCase(this.repository);

  Future<Result<List<CommentEntity>, CommentFailure>> call({required CommentQueryFilter filter}) {
    return repository.getCommentByFilter(filter: filter);
  }
}
