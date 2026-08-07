import 'package:baladeston/domain/category/failure/base_category_failure.dart';

abstract class CategoryModelIdFailure extends BaseCategoryValidationFailure {
  const CategoryModelIdFailure();
}

// id
class CategoryModelIdMissingFailure extends CategoryModelIdFailure {
  const CategoryModelIdMissingFailure();
}

class CategoryModelIdInvalidFailure extends CategoryModelIdFailure {
  const CategoryModelIdInvalidFailure();
}
