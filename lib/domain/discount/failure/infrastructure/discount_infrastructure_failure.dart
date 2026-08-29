import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';

abstract class DiscountInfrastructureFailure
    extends BaseDiscountInfrastructureFailure {
  const DiscountInfrastructureFailure();
}

class DiscountNetworkFailure extends DiscountInfrastructureFailure {
  const DiscountNetworkFailure();
}

class DiscountTimeoutFailure extends DiscountInfrastructureFailure {
  const DiscountTimeoutFailure();
}

class DiscountServerFailure extends DiscountInfrastructureFailure {
  const DiscountServerFailure();
}

class DiscountServerUnavailableFailure
    extends DiscountInfrastructureFailure {
  const DiscountServerUnavailableFailure();
}

class DiscountBadRequestFailure extends DiscountInfrastructureFailure {
  const DiscountBadRequestFailure();
}

class DiscountUnauthorizedInfrastructureFailure
    extends DiscountInfrastructureFailure {
  const DiscountUnauthorizedInfrastructureFailure();
}

class DiscountForbiddenInfrastructureFailure
    extends DiscountInfrastructureFailure {
  const DiscountForbiddenInfrastructureFailure();
}

class DiscountConflictFailure extends DiscountInfrastructureFailure {
  const DiscountConflictFailure();
}

class DiscountRateLimitFailure extends DiscountInfrastructureFailure {
  const DiscountRateLimitFailure();
}

class DiscountInvalidDataFailure extends DiscountInfrastructureFailure {
  const DiscountInvalidDataFailure();
}
