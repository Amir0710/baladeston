import 'package:baladeston/domain/category/failure/base_category_failure.dart';

abstract class CategoryImageFileFailure extends BaseCategoryValidationFailure {
  const CategoryImageFileFailure();
}

// image file
class CategoryImageFileSizeNotValidFailure extends CategoryImageFileFailure {
  const CategoryImageFileSizeNotValidFailure();
}

class CategoryImageFileInvalidFormatFailure extends CategoryImageFileFailure {
  const CategoryImageFileInvalidFormatFailure();
}
