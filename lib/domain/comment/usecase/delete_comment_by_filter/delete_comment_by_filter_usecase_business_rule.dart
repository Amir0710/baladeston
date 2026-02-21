import 'package:baladeston/data/comment/filter/comment_query_filter.dart';
import 'package:baladeston/domain/comment/exception/comment_filter_exception.dart';

class DeleteCommentByFilterUseCaseBusinessRule {
  final CommentQueryFilter filter;

  const DeleteCommentByFilterUseCaseBusinessRule({
    required this.filter,
  });

  void validate() {
    if (filter.userId == null) {
      throw CommentFilterOwnerException();
    }
  }
}
