import 'package:baladeston/data/comment/filter/comment/comment_query_filter.dart';
import 'package:baladeston/domain/comment/exception/comment_filter_exception.dart';

class CountCommentUseCaseBusinessRule {
  final CommentQueryFilter filter;

  const CountCommentUseCaseBusinessRule({
    required this.filter,
  });

  void validate() {
    if (filter.limit <= 0) {
      throw CommentFilterLimitException();
    }
  }
}
