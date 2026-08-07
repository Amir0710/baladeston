import 'package:baladeston/domain/category/failure/base_category_failure.dart';

abstract class CategoryItemIdFailure extends BaseCategoryValidationFailure {
  const CategoryItemIdFailure();
}

// id
class CategoryItemIdRequiredFailure extends CategoryItemIdFailure {
  const CategoryItemIdRequiredFailure();
}

class CategoryItemIdInvalidFailure extends CategoryItemIdFailure {
  const CategoryItemIdInvalidFailure();
}
