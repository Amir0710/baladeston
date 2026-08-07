import 'package:baladeston/domain/category/failure/base_category_failure.dart';

abstract class CategoryModelImageFileFailure extends BaseCategoryValidationFailure {
  const CategoryModelImageFileFailure();
}

// image file
class CategoryModelImageFileSizeNotValidFailure extends CategoryModelImageFileFailure {
  const CategoryModelImageFileSizeNotValidFailure();
}

class CategoryModelImageFileInvalidFormatFailure extends CategoryModelImageFileFailure {
  const CategoryModelImageFileInvalidFormatFailure();
}
