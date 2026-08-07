import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';

abstract class CollectionAuthorizationFailure extends BaseCollectionAuthFailure {
  const CollectionAuthorizationFailure();
}


class AccessForbiddenFailure extends CollectionAuthorizationFailure {
  const AccessForbiddenFailure();
}

class AccessAdminRequiredFailure extends CollectionAuthorizationFailure {
  const AccessAdminRequiredFailure();
}

class AccessModeratorRequiredFailure extends CollectionAuthorizationFailure {
  const AccessModeratorRequiredFailure();
}

class AccessPremiumRequiredFailure extends CollectionAuthorizationFailure {
  const AccessPremiumRequiredFailure();
}

class AccessNotOwnerFailure extends CollectionAuthorizationFailure {
  const AccessNotOwnerFailure();
}

class AccessResourcePrivateFailure extends CollectionAuthorizationFailure {
  const AccessResourcePrivateFailure();
}

class AccessOperationNotAllowedFailure extends CollectionAuthorizationFailure {
  const AccessOperationNotAllowedFailure();
}
