
import 'package:baladeston/domain/category/failure/base_category_failure.dart';

abstract class CategoryAuthorizationFailure extends BaseCategoryAuthFailure {
  const CategoryAuthorizationFailure();
}


class AccessForbiddenFailure extends CategoryAuthorizationFailure {
  const AccessForbiddenFailure();
}

class AccessAdminRequiredFailure extends CategoryAuthorizationFailure {
  const AccessAdminRequiredFailure();
}

class AccessModeratorRequiredFailure extends CategoryAuthorizationFailure {
  const AccessModeratorRequiredFailure();
}

class AccessPremiumRequiredFailure extends CategoryAuthorizationFailure {
  const AccessPremiumRequiredFailure();
}

class AccessNotOwnerFailure extends CategoryAuthorizationFailure {
  const AccessNotOwnerFailure();
}

class AccessResourcePrivateFailure extends CategoryAuthorizationFailure {
  const AccessResourcePrivateFailure();
}

class AccessOperationNotAllowedFailure extends CategoryAuthorizationFailure {
  const AccessOperationNotAllowedFailure();
}
