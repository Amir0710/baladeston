import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';

abstract class CollectionInfrastructureFailure
    extends BaseCollectionInfrastructureFailure {
  const CollectionInfrastructureFailure();
}

class CollectionNetworkFailure extends CollectionInfrastructureFailure {
  const CollectionNetworkFailure();
}

class CollectionTimeoutFailure extends CollectionInfrastructureFailure {
  const CollectionTimeoutFailure();
}

class CollectionServerFailure extends CollectionInfrastructureFailure {
  const CollectionServerFailure();
}

class CollectionServerUnavailableFailure
    extends CollectionInfrastructureFailure {
  const CollectionServerUnavailableFailure();
}

class CollectionBadRequestFailure extends CollectionInfrastructureFailure {
  const CollectionBadRequestFailure();
}

class CollectionUnauthorizedInfrastructureFailure
    extends CollectionInfrastructureFailure {
  const CollectionUnauthorizedInfrastructureFailure();
}

class CollectionForbiddenInfrastructureFailure
    extends CollectionInfrastructureFailure {
  const CollectionForbiddenInfrastructureFailure();
}

class CollectionConflictFailure extends CollectionInfrastructureFailure {
  const CollectionConflictFailure();
}

class CollectionRateLimitFailure extends CollectionInfrastructureFailure {
  const CollectionRateLimitFailure();
}

class CollectionInvalidDataFailure extends CollectionInfrastructureFailure {
  const CollectionInvalidDataFailure();
}

