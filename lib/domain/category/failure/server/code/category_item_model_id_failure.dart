import 'package:baladeston/domain/category/failure/base_category_failure.dart';

abstract class CategoryItemModelIdFailure extends BaseCategoryValidationFailure {
  const CategoryItemModelIdFailure();
}

// id
class CategoryItemModelIdRequiredFailure extends CategoryItemModelIdFailure {
  const CategoryItemModelIdRequiredFailure();
}

class CategoryItemModelIdInvalidFailure extends CategoryItemModelIdFailure {
  const CategoryItemModelIdInvalidFailure();
}
