import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';

abstract class CollectionEntityFailure extends BaseCollectionValidationFailure {
  const CollectionEntityFailure();
}

// description
final class CollectionEntityMissingDescriptionFailure
    extends CollectionEntityFailure {
  const CollectionEntityMissingDescriptionFailure();
}
final class CollectionEntityTooShortDescriptionFailure
    extends CollectionEntityFailure {
  const CollectionEntityTooShortDescriptionFailure();
}

final class CollectionEntityTooLongDescriptionFailure
    extends CollectionEntityFailure {
  const CollectionEntityTooLongDescriptionFailure();
}

final class CollectionEntityControlCharDescriptionFailure
    extends CollectionEntityFailure {
  const CollectionEntityControlCharDescriptionFailure();
}

final class CollectionEntityContainsHtmlDescriptionFailure
    extends CollectionEntityFailure {
  const CollectionEntityContainsHtmlDescriptionFailure();
}

final class CollectionEntityEmojiOnlyDescriptionFailure
    extends CollectionEntityFailure {
  const CollectionEntityEmojiOnlyDescriptionFailure();
}

// title
final class CollectionEntityMissingTitleFailure
    extends CollectionEntityFailure {
  const CollectionEntityMissingTitleFailure();
}

final class CollectionEntityTitleTooShortFailure
    extends CollectionEntityFailure {
  const CollectionEntityTitleTooShortFailure();
}

final class CollectionEntityTooLongTitleFailure
    extends CollectionEntityFailure {
  const CollectionEntityTooLongTitleFailure();
}

final class CollectionEntityControlCharTitleFailure
    extends CollectionEntityFailure {
  const CollectionEntityControlCharTitleFailure();
}

final class CollectionEntityContainsHtmlTitleFailure
    extends CollectionEntityFailure {
  const CollectionEntityContainsHtmlTitleFailure();
}

final class CollectionEntityEmojiOnlyTitleFailure
    extends CollectionEntityFailure {
  const CollectionEntityEmojiOnlyTitleFailure();
}
