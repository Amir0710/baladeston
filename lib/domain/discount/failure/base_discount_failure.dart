// discount
abstract class DiscountFailure {
  const DiscountFailure();
}

// network
abstract class BaseDiscountInfrastructureFailure extends DiscountFailure {
  const BaseDiscountInfrastructureFailure();
}

// server
abstract class BaseDiscountServerFailure extends DiscountFailure {
  const BaseDiscountServerFailure();
}

// data correctness
abstract class BaseDiscountDataIntegrityFailure
    extends BaseDiscountServerFailure {
  const BaseDiscountDataIntegrityFailure();
}

// parser
abstract class BaseDiscountModelParsingFailure
    extends BaseDiscountServerFailure {
  const BaseDiscountModelParsingFailure();
}

// server error code
abstract class BaseDiscountServerValidationFailure
    extends BaseDiscountServerFailure {
  const BaseDiscountServerValidationFailure();
}

// business failure
abstract class BaseDiscountDomainFailure extends DiscountFailure {
  const BaseDiscountDomainFailure();
}

// domain validation
abstract class BaseDiscountValidationFailure
    extends BaseDiscountDomainFailure {
  const BaseDiscountValidationFailure();
}

// auth
abstract class BaseDiscountAuthFailure extends BaseDiscountDomainFailure {
  const BaseDiscountAuthFailure();
}

// not found
abstract class BaseDiscountNotFoundFailure
    extends BaseDiscountDomainFailure {
  const BaseDiscountNotFoundFailure();
}

// unknown
class DiscountUnknownFailure extends DiscountFailure {
  const DiscountUnknownFailure();
}
