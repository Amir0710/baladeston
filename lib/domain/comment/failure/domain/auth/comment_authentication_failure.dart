
import 'package:baladeston/domain/comment/failure/base_comment_failure.dart';

abstract class CommentAuthenticationFailure extends BaseCommentAuthFailure {
  const CommentAuthenticationFailure();
}

class CommentAuthUnauthorizedFailure extends CommentAuthenticationFailure { 
  const CommentAuthUnauthorizedFailure();
}

class CommentAuthLoginRequiredFailure extends CommentAuthenticationFailure {
  const CommentAuthLoginRequiredFailure();
}

class CommentAuthInvalidCredentialsFailure extends CommentAuthenticationFailure {
  const CommentAuthInvalidCredentialsFailure();
}

class CommentAuthInvalidTokenFailure extends CommentAuthenticationFailure {
  const CommentAuthInvalidTokenFailure();
}

class CommentAuthTokenExpiredFailure extends CommentAuthenticationFailure {
  const CommentAuthTokenExpiredFailure();
}

class CommentAuthTokenRevokedFailure extends CommentAuthenticationFailure {
  const CommentAuthTokenRevokedFailure();
}

class CommentAuthRefreshTokenExpiredFailure extends CommentAuthenticationFailure {
  const CommentAuthRefreshTokenExpiredFailure();
}

class CommentAuthRefreshTokenInvalidFailure extends CommentAuthenticationFailure {
  const CommentAuthRefreshTokenInvalidFailure();
}

class CommentAuthAccountDisabledFailure extends CommentAuthenticationFailure {
  const CommentAuthAccountDisabledFailure();
}

class CommentAuthAccountLockedFailure extends CommentAuthenticationFailure {
  const CommentAuthAccountLockedFailure();
}

class CommentAuthEmailNotVerifiedFailure extends CommentAuthenticationFailure {
  const CommentAuthEmailNotVerifiedFailure();
}
