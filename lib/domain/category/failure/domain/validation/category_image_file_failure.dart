import 'package:baladeston/domain/category/failure/base_category_failure.dart';

abstract class CategoryImageFileFailure extends BaseCategoryValidationFailure {
  const CategoryImageFileFailure();
}

// image file
class CategoryImageFileTooLargeFailure extends CategoryImageFileFailure {
  const CategoryImageFileTooLargeFailure();
}

class CategoryImageFileInvalidFormatFailure extends CategoryImageFileFailure {
  const CategoryImageFileInvalidFormatFailure();
}

class CategoryImageFileInvalidContentFailure extends CategoryImageFileFailure {
  const CategoryImageFileInvalidContentFailure();
}
