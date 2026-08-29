
import 'package:baladeston/data/comment/api/error_codes/auth/comment_access_error_code.dart' as codes;
import 'package:baladeston/domain/comment/failure/domain/auth/comment_authorization_failure.dart';
import 'package:baladeston/domain/comment/failure/base_comment_failure.dart';

class CommentAccessCodeMapper {
  const CommentAccessCodeMapper();

  static final Map<String, CommentFailure Function()> _map = {
    codes.CommentAccessErrorCodes.forbidden: () =>
        const AccessForbiddenFailure() as CommentFailure,
    codes.CommentAccessErrorCodes.adminRequired: () =>
        const AccessAdminRequiredFailure() as CommentFailure,
    codes.CommentAccessErrorCodes.moderatorRequired: () =>
        const AccessModeratorRequiredFailure() as CommentFailure,
    codes.CommentAccessErrorCodes.premiumRequired: () =>
        const AccessPremiumRequiredFailure() as CommentFailure,
    codes.CommentAccessErrorCodes.notOwner: () =>
        const AccessNotOwnerFailure() as CommentFailure,
    codes.CommentAccessErrorCodes.resourcePrivate: () =>
        const AccessResourcePrivateFailure() as CommentFailure,
    codes.CommentAccessErrorCodes.operationNotAllowed: () =>
        const AccessOperationNotAllowedFailure() as CommentFailure,
  };

  static CommentFailure? map(String? code) {
    if (code == null) return null;
    return _map[code]?.call();
  }
}
