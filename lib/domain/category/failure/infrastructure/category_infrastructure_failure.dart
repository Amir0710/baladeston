import 'package:baladeston/domain/category/failure/base_category_failure.dart';

abstract class CategoryInfrastructureFailure
    extends BaseCategoryInfrastructureFailure {
  const CategoryInfrastructureFailure();
}

class CategoryNetworkFailure extends CategoryInfrastructureFailure {
  const CategoryNetworkFailure();
}

class CategoryTimeoutFailure extends CategoryInfrastructureFailure {
  const CategoryTimeoutFailure();
}

class CategoryServerFailure extends CategoryInfrastructureFailure {
  const CategoryServerFailure();
}

class CategoryServerUnavailableFailure extends CategoryInfrastructureFailure {
  const CategoryServerUnavailableFailure();
}

class CategoryBadRequestFailure extends CategoryInfrastructureFailure {
  const CategoryBadRequestFailure();
}

class CategoryUnauthorizedInfrastructureFailure
    extends CategoryInfrastructureFailure {
  const CategoryUnauthorizedInfrastructureFailure();
}

class CategoryForbiddenInfrastructureFailure
    extends CategoryInfrastructureFailure {
  const CategoryForbiddenInfrastructureFailure();
}

class CategoryConflictFailure extends CategoryInfrastructureFailure {
  const CategoryConflictFailure();
}

class CategoryRateLimitFailure extends CategoryInfrastructureFailure {
  const CategoryRateLimitFailure();
}

class CategoryInvalidDataFailure extends CategoryInfrastructureFailure {
  const CategoryInvalidDataFailure();
}
