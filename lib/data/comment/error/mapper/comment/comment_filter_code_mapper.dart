import 'package:baladeston/data/comment/api/error_codes/comment/comment_filter_error_code.dart'
as codes;
import 'package:baladeston/domain/comment/failure/base_comment_failure.dart';
import 'package:baladeston/domain/comment/failure/server/code/comment_model_filter_failure.dart';

final class CommentFilterCodeMapper {
  const CommentFilterCodeMapper();

  static final Map<String, CommentFailure Function()> _registry = {
    // ids
    codes.CommentFilterErrorCodes.invalidIds: () =>
    const CommentModelFilterInvalidIdsFailure(),

    // userId
    codes.CommentFilterErrorCodes.invalidUserId: () =>
    const CommentModelFilterInvalidUserIdFailure(),

    // targetId
    codes.CommentFilterErrorCodes.invalidTargetId: () =>
    const CommentModelFilterInvalidTargetIdFailure(),

    // commentType
    codes.CommentFilterErrorCodes.invalidCommentType: () =>
    const CommentModelFilterInvalidCommentTypeFailure(),

    // status
    codes.CommentFilterErrorCodes.invalidStatus: () =>
    const CommentModelFilterInvalidStatusFailure(),

    // content
    codes.CommentFilterErrorCodes.invalidContent: () =>
    const CommentModelFilterInvalidContentFailure(),

    // searchTerm
    codes.CommentFilterErrorCodes.invalidSearchTerm: () =>
    const CommentModelFilterInvalidSearchTermFailure(),

    // minRating
    codes.CommentFilterErrorCodes.invalidMinRating: () =>
    const CommentModelFilterInvalidMinRatingFailure(),

    // maxRating
    codes.CommentFilterErrorCodes.invalidMaxRating: () =>
    const CommentModelFilterInvalidMaxRatingFailure(),

    // ratingRange
    codes.CommentFilterErrorCodes.invalidRatingRange: () =>
    const CommentModelFilterInvalidRatingRangeFailure(),

    // createdAfter
    codes.CommentFilterErrorCodes.invalidCreatedAfter: () =>
    const CommentModelFilterInvalidCreatedAfterFailure(),

    // createdBefore
    codes.CommentFilterErrorCodes.invalidCreatedBefore: () =>
    const CommentModelFilterInvalidCreatedBeforeFailure(),

    // limit
    codes.CommentFilterErrorCodes.invalidLimit: () =>
    const CommentModelFilterInvalidLimitFailure(),

    // offset
    codes.CommentFilterErrorCodes.invalidOffset: () =>
    const CommentModelFilterInvalidOffsetFailure(),

    // orderBy
    codes.CommentFilterErrorCodes.invalidOrderBy: () =>
    const CommentModelFilterInvalidOrderByFailure(),

    // ascending
    codes.CommentFilterErrorCodes.invalidAscending: () =>
    const CommentModelFilterInvalidAscendingFailure(),

    // empty
    codes.CommentFilterErrorCodes.emptyFilter: () =>
    const CommentModelFilterEmptyFailure(),
  };

  static CommentFailure? map(String? code) {
    if (code == null) return null;
    return _registry[code]?.call();
  }
}
