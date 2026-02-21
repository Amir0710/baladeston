import 'package:baladeston/data/comment/filter/comment_query_filter.dart';
import 'package:baladeston/domain/comment/exception/comment_filter_exception.dart';

class GetCommentByFilterUseCaseBusinessRule {
  final CommentQueryFilter filter;

  const GetCommentByFilterUseCaseBusinessRule({
    required this.filter,
  });

  void validate() {
    if (filter.limit <= 0) {
      throw CommentFilterLimitException();
    }

    if (filter.offset < 0) {
      throw CommentFilterOffsetException();
    }
  }
}
