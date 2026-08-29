import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/core/variable/text_content_guard.dart';
import 'package:baladeston/domain/comment/entity/comment/comment_entity.dart';
import 'package:baladeston/data/comment/filter/comment/comment_query_filter.dart';
import 'package:baladeston/domain/comment/failure/base_comment_failure.dart';
import 'package:baladeston/domain/comment/failure/domain/validation/comment_entity_failure.dart';
import 'package:baladeston/domain/comment/failure/domain/validation/comment_filter_failure.dart';

class UpdateCommentByFilterUseCaseBusinessRule {
  final CommentEntity comment;
  final CommentQueryFilter filter;
  static const Limits _limits = Limits();

  const UpdateCommentByFilterUseCaseBusinessRule({
    required this.comment,
    required this.filter,
  });

  Result<void, CommentFailure> validate() {
    late Result<void, CommentFailure> result;

    _filterValidation().when(
      success: (_) {
        result = _entityValidation();
      },
      failure: (failure) {
        result = Result.failure(failure);
      },
    );

    return result;
  }

  Result<void, CommentFailure> _entityValidation() {
    final content = comment.content?.trim();
    // content
    if (content != null && content.isEmpty) {
      return const Result.failure(CommentEntityMissingContentFailure());
    }
    if (content != null && TextContentGuard.containsHtml(content)) {
      return const Result.failure(CommentEntityContainsHtmlContentFailure());
    }
    if (content != null && TextContentGuard.isEmojiOnly(content)) {
      return const Result.failure(CommentEntityEmojiOnlyContentFailure());
    }
    if (content != null && TextContentGuard.hasControlCharacters(content)) {
      return const Result.failure(CommentEntityControlCharContentFailure());
    }
    if (content != null && content.length < _limits.minCommentLength) {
      return const Result.failure(CommentEntityTooShortContentFailure());
    }
    if (content != null && content.length > _limits.maxCommentLength) {
      return const Result.failure(CommentEntityTooLongContentFailure());
    }

    return const Result.success(null);
  }

  Result<void, CommentFilterFailure> _filterValidation() {
    final ids = filter.ids;
    final userId = filter.userId;
    final targetId = filter.targetId;
    final searchTerm = filter.searchTerm?.trim();
    final createdAfter = filter.createdAfter;
    final createdBefore = filter.createdBefore;

    // ids
    if (ids != null) {
      if (ids.isEmpty || ids.any((id) => id <= 0)) {
        return const Result.failure(CommentFilterInvalidIdsFailure());
      }
    }

    // search term
    if (searchTerm != null) {
      if (TextContentGuard.containsHtml(searchTerm)) {
        return const Result.failure(
            CommentFilterContainsHtmlSearchTermFailure());
      }
      if (TextContentGuard.isEmojiOnly(searchTerm)) {
        return const Result.failure(CommentFilterEmojiOnlySearchTermFailure());
      }
      if (TextContentGuard.hasControlCharacters(searchTerm)) {
        return const Result.failure(
            CommentFilterControlCharSearchTermFailure());
      }
      if (searchTerm.length < _limits.minCommentFilterSearchTermLength) {
        return const Result.failure(CommentFilterTooShortSearchTermFailure());
      }
      if (searchTerm.length > _limits.maxCommentFilterSearchTermLength) {
        return const Result.failure(CommentFilterTooLongSearchTermFailure());
      }
    }

    // dates
    if (createdAfter != null && createdAfter.isAfter(DateTime.now())) {
      return const Result.failure(CommentFilterInvalidCreatedAtFailure());
    }

    if (createdBefore != null && createdBefore.isAfter(DateTime.now())) {
      return const Result.failure(CommentFilterInvalidCreatedBeforeFailure());
    }

    if (createdAfter != null &&
        createdBefore != null &&
        createdAfter.isAfter(createdBefore)) {
      return const Result.failure(CommentFilterInvalidDatesRangeFailure());
    }

    // empty filter
    final isEmpty = ids == null &&
        userId == null &&
        targetId == null &&
        (searchTerm == null || searchTerm.isEmpty) &&
        createdAfter == null &&
        createdBefore == null &&
        filter.commentType == null &&
        filter.status == null;

    if (isEmpty) {
      return const Result.failure(CommentFilterEmptyFailure());
    }

    return const Result.success(null);
  }
}
