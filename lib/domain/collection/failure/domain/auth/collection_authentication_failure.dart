
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';

abstract class CollectionAuthenticationFailure extends BaseCollectionAuthFailure {
  const CollectionAuthenticationFailure();
}


class CollectionAuthUnauthorizedFailure extends CollectionAuthenticationFailure {
  const CollectionAuthUnauthorizedFailure();
}

class CollectionAuthLoginRequiredFailure extends CollectionAuthenticationFailure {
  const CollectionAuthLoginRequiredFailure();
}

class CollectionAuthInvalidCredentialsFailure extends CollectionAuthenticationFailure {
  const CollectionAuthInvalidCredentialsFailure();
}

class CollectionAuthInvalidTokenFailure extends CollectionAuthenticationFailure {
  const CollectionAuthInvalidTokenFailure();
}

class CollectionAuthTokenExpiredFailure extends CollectionAuthenticationFailure {
  const CollectionAuthTokenExpiredFailure();
}

class CollectionAuthTokenRevokedFailure extends CollectionAuthenticationFailure {
  const CollectionAuthTokenRevokedFailure();
}

class CollectionAuthRefreshTokenExpiredFailure extends CollectionAuthenticationFailure {
  const CollectionAuthRefreshTokenExpiredFailure();
}

class CollectionAuthRefreshTokenInvalidFailure extends CollectionAuthenticationFailure {
  const CollectionAuthRefreshTokenInvalidFailure();
}

class CollectionAuthAccountDisabledFailure extends CollectionAuthenticationFailure {
  const CollectionAuthAccountDisabledFailure();
}

class CollectionAuthAccountLockedFailure extends CollectionAuthenticationFailure {
  const CollectionAuthAccountLockedFailure();
}

class CollectionAuthEmailNotVerifiedFailure extends CollectionAuthenticationFailure {
  const CollectionAuthEmailNotVerifiedFailure();
}
