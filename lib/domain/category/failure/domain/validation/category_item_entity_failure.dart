import 'package:baladeston/domain/category/failure/base_category_failure.dart';

abstract class CategoryItemEntityFailure
    extends BaseCategoryValidationFailure {
  const CategoryItemEntityFailure();
}

//  category id
class CategoryItemEntityInvalidCategoryIdFailure
    extends CategoryItemEntityFailure {
  const CategoryItemEntityInvalidCategoryIdFailure();
}

//  collection id
class CategoryItemEntityInvalidCollectionIdFailure
    extends CategoryItemEntityFailure {
  const CategoryItemEntityInvalidCollectionIdFailure();
}


// title

final class CategoryItemEntityControlCharTitleFailure
    extends CategoryItemEntityFailure {
  const CategoryItemEntityControlCharTitleFailure();
}

final class CategoryItemEntityContainsHtmlTitleFailure
    extends CategoryItemEntityFailure {
  const CategoryItemEntityContainsHtmlTitleFailure();
}

final class CategoryItemEntityEmojiOnlyTitleFailure
    extends CategoryItemEntityFailure {
  const CategoryItemEntityEmojiOnlyTitleFailure();
}

final class CategoryItemEntityTitleTooShortFailure
    extends CategoryItemEntityFailure {
  const CategoryItemEntityTitleTooShortFailure();
}
final class CategoryItemEntityTooLongTitleFailure
    extends CategoryItemEntityFailure {
  const CategoryItemEntityTooLongTitleFailure();
}
