import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';

abstract class CollectionModelImageUrlFailure
    extends BaseCollectionServerValidationFailure {
  const CollectionModelImageUrlFailure();
}
// image url

class CollectionImageUrlInvalidFormatFailure extends CollectionModelImageUrlFailure {
  const CollectionImageUrlInvalidFormatFailure();
}

class CollectionImageUrlUnsupportedSchemeFailure
    extends CollectionModelImageUrlFailure {
  const CollectionImageUrlUnsupportedSchemeFailure();
}

class CollectionImageUrlStructuralFailure extends CollectionModelImageUrlFailure {
  const CollectionImageUrlStructuralFailure();
}

class CollectionImageUrlInvalidLengthFailure extends CollectionModelImageUrlFailure {
  const CollectionImageUrlInvalidLengthFailure();
}
