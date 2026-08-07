import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';

abstract class CollectionImageUrlFailure
    extends BaseCollectionValidationFailure {
  const CollectionImageUrlFailure();
}

// image url

class CollectionImageUrlEmptyUrlFailure extends CollectionImageUrlFailure {
  const CollectionImageUrlEmptyUrlFailure();
}

class CollectionImageUrlInvalidFormatFailure extends CollectionImageUrlFailure {
  const CollectionImageUrlInvalidFormatFailure();
}

class CollectionImageUrlUnsupportedSchemeFailure
    extends CollectionImageUrlFailure {
  const CollectionImageUrlUnsupportedSchemeFailure();
}

class CollectionImageUrlUnauthorizedHostFailure
    extends CollectionImageUrlFailure {
  const CollectionImageUrlUnauthorizedHostFailure();
}

class CollectionImageUrlInvalidIdFailure extends CollectionImageUrlFailure {
  const CollectionImageUrlInvalidIdFailure();
}
