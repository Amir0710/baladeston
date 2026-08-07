import 'package:baladeston/domain/category/failure/base_category_failure.dart';

abstract class CategoryImageUrlFailure extends BaseCategoryValidationFailure {
  const CategoryImageUrlFailure();
}

// image url
class CategoryImageUrlEmptyUrlFailure extends CategoryImageUrlFailure {
  const CategoryImageUrlEmptyUrlFailure();
}

class CategoryImageUrlInvalidFormatFailure extends CategoryImageUrlFailure {
  const CategoryImageUrlInvalidFormatFailure();
}

class CategoryImageUrlUnsupportedSchemeFailure extends CategoryImageUrlFailure {
  const CategoryImageUrlUnsupportedSchemeFailure();
}

class CategoryImageUrlUnauthorizedHostFailure extends CategoryImageUrlFailure {
  const CategoryImageUrlUnauthorizedHostFailure();
}

class CategoryImageUrlInvalidIdFailure extends CategoryImageUrlFailure {
  const CategoryImageUrlInvalidIdFailure();
}
