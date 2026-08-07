// category
abstract class CategoryFailure {
  const CategoryFailure();
}

// network
abstract class BaseCategoryInfrastructureFailure extends CategoryFailure {
  const BaseCategoryInfrastructureFailure();
}

// server
abstract class BaseCategoryServerFailure extends CategoryFailure {
  const BaseCategoryServerFailure();
}

// data correctness
abstract class BaseCategoryDataIntegrityFailure
    extends BaseCategoryServerFailure {
  const BaseCategoryDataIntegrityFailure();
}

// parser
abstract class BaseCategoryModelParsingFailure
    extends BaseCategoryServerFailure {
  const BaseCategoryModelParsingFailure();
}

// server error code
abstract class BaseCategoryServerValidationFailure
    extends BaseCategoryServerFailure {
  const BaseCategoryServerValidationFailure();
}

// business failure
abstract class BaseCategoryDomainFailure extends CategoryFailure {
  const BaseCategoryDomainFailure();
}

// domain validation
abstract class BaseCategoryValidationFailure extends BaseCategoryDomainFailure {
  const BaseCategoryValidationFailure();
}

// auth
abstract class BaseCategoryAuthFailure extends BaseCategoryDomainFailure {
  const BaseCategoryAuthFailure();
}

// not found
abstract class BaseCategoryNotFoundFailure extends BaseCategoryDomainFailure {
  const BaseCategoryNotFoundFailure();
}

// unknown
class CategoryUnknownFailure extends CategoryFailure {
  const CategoryUnknownFailure();
}
