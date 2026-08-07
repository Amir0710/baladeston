// collection
abstract class CollectionFailure {
  const CollectionFailure();
}

// network
abstract class BaseCollectionInfrastructureFailure extends CollectionFailure {
  const BaseCollectionInfrastructureFailure();
}

// server
abstract class BaseCollectionServerFailure extends CollectionFailure {
  const BaseCollectionServerFailure();
}

// data correctness
abstract class BaseCollectionDataIntegrityFailure
    extends BaseCollectionServerFailure {
  const BaseCollectionDataIntegrityFailure();
}

// parser
abstract class BaseCollectionModelParsingFailure
    extends BaseCollectionServerFailure {
  const BaseCollectionModelParsingFailure();
}

// server error code
abstract class BaseCollectionServerValidationFailure
    extends BaseCollectionServerFailure {
  const BaseCollectionServerValidationFailure();
}

// business failure
abstract class BaseCollectionDomainFailure extends CollectionFailure {
  const BaseCollectionDomainFailure();
}

// domain validation
abstract class BaseCollectionValidationFailure
    extends BaseCollectionDomainFailure {
  const BaseCollectionValidationFailure();
}

// auth
abstract class BaseCollectionAuthFailure extends BaseCollectionDomainFailure {
  const BaseCollectionAuthFailure();
}

// not found
abstract class BaseCollectionNotFoundFailure
    extends BaseCollectionDomainFailure {
  const BaseCollectionNotFoundFailure();
}

// unknow
class CollectionUnknownFailure extends CollectionFailure {
  const CollectionUnknownFailure();
}
