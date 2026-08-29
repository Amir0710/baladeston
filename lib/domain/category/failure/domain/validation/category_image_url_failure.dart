import 'package:baladeston/domain/category/failure/base_category_failure.dart';

abstract class CategoryImageUrlFailure
    extends BaseCategoryValidationFailure {
  const CategoryImageUrlFailure();
}

// image url

class CategoryImageUrlInvalidFormatFailure extends CategoryImageUrlFailure {
  const CategoryImageUrlInvalidFormatFailure();
}

class CategoryImageUrlUnsupportedSchemeFailure
    extends CategoryImageUrlFailure {
  const CategoryImageUrlUnsupportedSchemeFailure();
}

class CategoryImageUrlStructuralFailure extends CategoryImageUrlFailure {
  const CategoryImageUrlStructuralFailure();
}

class CategoryImageUrlInvalidLengthFailure extends CategoryImageUrlFailure {
  const CategoryImageUrlInvalidLengthFailure();
}
