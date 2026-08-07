
import 'package:baladeston/domain/comment/failure/base_comment_failure.dart';

abstract class CommentAuthorizationFailure extends BaseCommentAuthFailure {
  const CommentAuthorizationFailure();
}


class AccessForbiddenFailure extends CommentAuthorizationFailure {
  const AccessForbiddenFailure();
}

class AccessAdminRequiredFailure extends CommentAuthorizationFailure {
  const AccessAdminRequiredFailure();
}

class AccessModeratorRequiredFailure extends CommentAuthorizationFailure {
  const AccessModeratorRequiredFailure();
}

class AccessPremiumRequiredFailure extends CommentAuthorizationFailure {
  const AccessPremiumRequiredFailure();
}

class AccessNotOwnerFailure extends CommentAuthorizationFailure {
  const AccessNotOwnerFailure();
}

class AccessResourcePrivateFailure extends CommentAuthorizationFailure {
  const AccessResourcePrivateFailure();
}

class AccessOperationNotAllowedFailure extends CommentAuthorizationFailure {
  const AccessOperationNotAllowedFailure();
}
