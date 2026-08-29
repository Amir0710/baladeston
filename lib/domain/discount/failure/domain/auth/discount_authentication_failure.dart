import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';

abstract class DiscountAuthenticationFailure extends BaseDiscountAuthFailure {
  const DiscountAuthenticationFailure();
}

class DiscountAuthUnauthorizedFailure extends DiscountAuthenticationFailure {
  const DiscountAuthUnauthorizedFailure();
}

class DiscountAuthLoginRequiredFailure extends DiscountAuthenticationFailure {
  const DiscountAuthLoginRequiredFailure();
}

class DiscountAuthInvalidCredentialsFailure extends DiscountAuthenticationFailure {
  const DiscountAuthInvalidCredentialsFailure();
}

class DiscountAuthInvalidTokenFailure extends DiscountAuthenticationFailure {
  const DiscountAuthInvalidTokenFailure();
}

class DiscountAuthTokenExpiredFailure extends DiscountAuthenticationFailure {
  const DiscountAuthTokenExpiredFailure();
}

class DiscountAuthTokenRevokedFailure extends DiscountAuthenticationFailure {
  const DiscountAuthTokenRevokedFailure();
}

class DiscountAuthRefreshTokenExpiredFailure extends DiscountAuthenticationFailure {
  const DiscountAuthRefreshTokenExpiredFailure();
}

class DiscountAuthRefreshTokenInvalidFailure extends DiscountAuthenticationFailure {
  const DiscountAuthRefreshTokenInvalidFailure();
}

class DiscountAuthAccountDisabledFailure extends DiscountAuthenticationFailure {
  const DiscountAuthAccountDisabledFailure();
}

class DiscountAuthAccountLockedFailure extends DiscountAuthenticationFailure {
  const DiscountAuthAccountLockedFailure();
}

class DiscountAuthEmailNotVerifiedFailure extends DiscountAuthenticationFailure {
  const DiscountAuthEmailNotVerifiedFailure();
}
