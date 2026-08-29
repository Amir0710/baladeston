import 'package:baladeston/domain/category/failure/base_category_failure.dart';

abstract class CategoryEntityFailure extends BaseCategoryValidationFailure {
  const CategoryEntityFailure();
}

// parent
final class CategoryEntityInvalidParentFailure extends CategoryEntityFailure {
  const CategoryEntityInvalidParentFailure();
}

// title
final class CategoryEntityMissingTitleFailure
    extends CategoryEntityFailure {
  const CategoryEntityMissingTitleFailure();
}

final class CategoryEntityTitleTooShortFailure
    extends CategoryEntityFailure {
  const CategoryEntityTitleTooShortFailure();
}

final class CategoryEntityTooLongTitleFailure
    extends CategoryEntityFailure {
  const CategoryEntityTooLongTitleFailure();
}
final class CategoryEntityControlCharTitleFailure
    extends CategoryEntityFailure {
  const CategoryEntityControlCharTitleFailure();
}

final class CategoryEntityContainsHtmlTitleFailure
    extends CategoryEntityFailure {
  const CategoryEntityContainsHtmlTitleFailure();
}

final class CategoryEntityEmojiOnlyTitleFailure
    extends CategoryEntityFailure {
  const CategoryEntityEmojiOnlyTitleFailure();
}

// description
final class CategoryEntityMissingDescriptionFailure
    extends CategoryEntityFailure {
  const CategoryEntityMissingDescriptionFailure();
}
final class CategoryEntityTooShortDescriptionFailure
    extends CategoryEntityFailure {
  const CategoryEntityTooShortDescriptionFailure();
}

final class CategoryEntityTooLongDescriptionFailure
    extends CategoryEntityFailure {
  const CategoryEntityTooLongDescriptionFailure();
}

final class CategoryEntityControlCharDescriptionFailure
    extends CategoryEntityFailure {
  const CategoryEntityControlCharDescriptionFailure();
}

final class CategoryEntityContainsHtmlDescriptionFailure
    extends CategoryEntityFailure {
  const CategoryEntityContainsHtmlDescriptionFailure();
}

final class CategoryEntityEmojiOnlyDescriptionFailure
    extends CategoryEntityFailure {
  const CategoryEntityEmojiOnlyDescriptionFailure();
}
