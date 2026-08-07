import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';

abstract class CollectionModelImageUrlFailure
    extends BaseCollectionServerValidationFailure {
  const CollectionModelImageUrlFailure();
}

// image url

class CollectionModelImageUrlEmptyUrlFailure
    extends CollectionModelImageUrlFailure {
  const CollectionModelImageUrlEmptyUrlFailure();
}

class CollectionModelImageUrlInvalidFormatFailure
    extends CollectionModelImageUrlFailure {
  const CollectionModelImageUrlInvalidFormatFailure();
}

class CollectionModelImageUrlUnsupportedSchemeFailure
    extends CollectionModelImageUrlFailure {
  const CollectionModelImageUrlUnsupportedSchemeFailure();
}

class CollectionModelImageUrlUnauthorizedHostFailure
    extends CollectionModelImageUrlFailure {
  const CollectionModelImageUrlUnauthorizedHostFailure();
}

class CollectionModelImageUrlInvalidIdFailure
    extends CollectionModelImageUrlFailure {
  const CollectionModelImageUrlInvalidIdFailure();
}
