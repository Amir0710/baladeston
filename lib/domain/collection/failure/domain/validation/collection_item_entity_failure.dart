// collection_item_entity_failure.dart

import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';

abstract class CollectionItemEntityFailure
    extends BaseCollectionValidationFailure {
  const CollectionItemEntityFailure();
}

//  videoId

class CollectionItemEntityInvalidVideoIdFailure
    extends CollectionItemEntityFailure {
  const CollectionItemEntityInvalidVideoIdFailure();
}

//  collectionId
class CollectionItemEntityInvalidCollectionIdFailure
    extends CollectionItemEntityFailure {
  const CollectionItemEntityInvalidCollectionIdFailure();
}


// title

final class CollectionItemEntityControlCharTitleFailure
    extends CollectionItemEntityFailure {
  const CollectionItemEntityControlCharTitleFailure();
}

final class CollectionItemEntityContainsHtmlTitleFailure
    extends CollectionItemEntityFailure {
  const CollectionItemEntityContainsHtmlTitleFailure();
}

final class CollectionItemEntityEmojiOnlyTitleFailure
    extends CollectionItemEntityFailure {
  const CollectionItemEntityEmojiOnlyTitleFailure();
}

final class CollectionItemEntityTitleTooShortFailure
    extends CollectionItemEntityFailure {
  const CollectionItemEntityTitleTooShortFailure();
}
final class CollectionItemEntityTooLongTitleFailure
    extends CollectionItemEntityFailure {
  const CollectionItemEntityTooLongTitleFailure();
}
