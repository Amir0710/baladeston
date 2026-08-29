import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';

abstract class CollectionImageUrlFailure
    extends BaseCollectionValidationFailure {
  const CollectionImageUrlFailure();
}

// image url

class CollectionImageUrlInvalidFormatFailure extends CollectionImageUrlFailure {
  const CollectionImageUrlInvalidFormatFailure();
}

class CollectionImageUrlUnsupportedSchemeFailure
    extends CollectionImageUrlFailure {
  const CollectionImageUrlUnsupportedSchemeFailure();
}

class CollectionImageUrlStructuralFailure extends CollectionImageUrlFailure {
  const CollectionImageUrlStructuralFailure();
}

class CollectionImageUrlInvalidLengthFailure extends CollectionImageUrlFailure {
  const CollectionImageUrlInvalidLengthFailure();
}
