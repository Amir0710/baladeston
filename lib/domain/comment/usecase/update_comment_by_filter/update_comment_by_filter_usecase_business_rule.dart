import 'package:baladeston/domain/comment/entity/comment_entity.dart';
import 'package:baladeston/data/comment/filter/comment_query_filter.dart';
import 'package:baladeston/domain/comment/exception/comment_entity_exception.dart';
import 'package:baladeston/domain/comment/exception/comment_filter_exception.dart';

class UpdateCommentByFilterUseCaseBusinessRule {
  final CommentEntity comment;
  final CommentQueryFilter filter;

  const UpdateCommentByFilterUseCaseBusinessRule({
    required this.comment,
    required this.filter,
  });

  /// Entry point
  void validate() {
    _validateUpdatableFields();
    _validateFilterSafety();
    _validateFilterRules();
  }

  /// Comment validations
  void _validateUpdatableFields() {
    final hasUpdatableField =
        comment.content != null ||
            comment.rating != null ||
            comment.updatedAt != null ||
            comment.status != null;

    if (!hasUpdatableField) {
      throw CommentEntityNoUpdatableFieldsException();
    }
  }

  /// Filter safety (VERY IMPORTANT)
  void _validateFilterSafety() {
    final isFilterEmpty =
            filter.userId == null &&
            filter.targetId == null &&
            filter.status == null &&
            filter.searchTerm == null;

    if (isFilterEmpty) {
      throw CommentFilterEmptyException();
    }
  }

  /// Filter rules
  void _validateFilterRules() {
    if (filter.limit != null && filter.limit <= 0) {
      throw CommentFilterLimitException();
    }

    if (filter.offset != null && filter.offset < 0) {
      throw CommentFilterOffsetException();
    }



    if (filter.searchTerm != null && filter.targetId != null) {
      throw CommentFilterSearchException();
    }
  }
}
