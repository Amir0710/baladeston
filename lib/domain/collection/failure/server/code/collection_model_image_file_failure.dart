import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';

abstract class CollectionModelImageFileFailure
    extends BaseCollectionServerValidationFailure {
  const CollectionModelImageFileFailure();
}

// image file

class CollectionModelImageFileTooLargeFailure
    extends CollectionModelImageFileFailure {
  const CollectionModelImageFileTooLargeFailure();
}

class CollectionModelImageFileInvalidFormatFailure
    extends CollectionModelImageFileFailure {
  const CollectionModelImageFileInvalidFormatFailure();
}
