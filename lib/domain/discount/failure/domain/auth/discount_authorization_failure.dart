import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';

abstract class DiscountAuthorizationFailure extends BaseDiscountAuthFailure {
  const DiscountAuthorizationFailure();
}

class DiscountAccessForbiddenFailure extends DiscountAuthorizationFailure {
  const DiscountAccessForbiddenFailure();
}

class DiscountAccessAdminRequiredFailure extends DiscountAuthorizationFailure {
  const DiscountAccessAdminRequiredFailure();
}

class DiscountAccessModeratorRequiredFailure extends DiscountAuthorizationFailure {
  const DiscountAccessModeratorRequiredFailure();
}

class DiscountAccessPremiumRequiredFailure extends DiscountAuthorizationFailure {
  const DiscountAccessPremiumRequiredFailure();
}

class DiscountAccessNotOwnerFailure extends DiscountAuthorizationFailure {
  const DiscountAccessNotOwnerFailure();
}

class DiscountAccessResourcePrivateFailure extends DiscountAuthorizationFailure {
  const DiscountAccessResourcePrivateFailure();
}

class DiscountAccessOperationNotAllowedFailure extends DiscountAuthorizationFailure {
  const DiscountAccessOperationNotAllowedFailure();
}
