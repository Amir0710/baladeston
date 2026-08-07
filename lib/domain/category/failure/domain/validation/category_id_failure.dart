import 'package:baladeston/domain/category/failure/base_category_failure.dart';

abstract class CategoryIdFailure extends BaseCategoryValidationFailure {
  const CategoryIdFailure();
}

// id
class CategoryIdMissingFailure extends CategoryIdFailure {
  const CategoryIdMissingFailure();
}

class CategoryIdInvalidFailure extends CategoryIdFailure {
  const CategoryIdInvalidFailure();
}
