


import 'package:baladeston/domain/category/failure/base_category_failure.dart';

abstract class CategoryAuthenticationFailure extends BaseCategoryAuthFailure {
  const CategoryAuthenticationFailure();
}

class CategoryAuthUnauthorizedFailure extends CategoryAuthenticationFailure {
  const CategoryAuthUnauthorizedFailure();
}

class CategoryAuthLoginRequiredFailure extends CategoryAuthenticationFailure {
  const CategoryAuthLoginRequiredFailure();
}

class CategoryAuthInvalidCredentialsFailure extends CategoryAuthenticationFailure {
  const CategoryAuthInvalidCredentialsFailure();
}

class CategoryAuthInvalidTokenFailure extends CategoryAuthenticationFailure {
  const CategoryAuthInvalidTokenFailure();
}

class CategoryAuthTokenExpiredFailure extends CategoryAuthenticationFailure {
  const CategoryAuthTokenExpiredFailure();
}

class CategoryAuthTokenRevokedFailure extends CategoryAuthenticationFailure {
  const CategoryAuthTokenRevokedFailure();
}

class CategoryAuthRefreshTokenExpiredFailure extends CategoryAuthenticationFailure {
  const CategoryAuthRefreshTokenExpiredFailure();
}

class CategoryAuthRefreshTokenInvalidFailure extends CategoryAuthenticationFailure {
  const CategoryAuthRefreshTokenInvalidFailure();
}

class CategoryAuthAccountDisabledFailure extends CategoryAuthenticationFailure {
  const CategoryAuthAccountDisabledFailure();
}

class CategoryAuthAccountLockedFailure extends CategoryAuthenticationFailure {
  const CategoryAuthAccountLockedFailure();
}

class CategoryAuthEmailNotVerifiedFailure extends CategoryAuthenticationFailure {
  const CategoryAuthEmailNotVerifiedFailure();
}
