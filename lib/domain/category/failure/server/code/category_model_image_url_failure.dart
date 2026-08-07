import 'package:baladeston/domain/category/failure/base_category_failure.dart';

abstract class CategoryModelImageUrlFailure extends BaseCategoryValidationFailure {
  const CategoryModelImageUrlFailure();
}

// image url
class CategoryModelImageUrlEmptyUrlFailure extends CategoryModelImageUrlFailure {
  const CategoryModelImageUrlEmptyUrlFailure();
}

class CategoryModelImageUrlInvalidFormatFailure extends CategoryModelImageUrlFailure {
  const CategoryModelImageUrlInvalidFormatFailure();
}

class CategoryModelImageUrlUnsupportedSchemeFailure extends CategoryModelImageUrlFailure {
  const CategoryModelImageUrlUnsupportedSchemeFailure();
}

class CategoryModelImageUrlUnauthorizedHostFailure extends CategoryModelImageUrlFailure {
  const CategoryModelImageUrlUnauthorizedHostFailure();
}

class CategoryModelImageUrlInvalidIdFailure extends CategoryModelImageUrlFailure {
  const CategoryModelImageUrlInvalidIdFailure();
}
