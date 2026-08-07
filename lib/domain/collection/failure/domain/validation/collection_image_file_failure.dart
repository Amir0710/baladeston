import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';

abstract class CollectionImageFileFailure
    extends BaseCollectionValidationFailure {
  const CollectionImageFileFailure();
}

// image file

class CollectionImageFileTooLargeFailure extends CollectionImageFileFailure {
  const CollectionImageFileTooLargeFailure();
}

class CollectionImageFileInvalidFormatFailure
    extends CollectionImageFileFailure {
  const CollectionImageFileInvalidFormatFailure();
}


