import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';

abstract class CollectionModelIdFailure
    extends BaseCollectionServerValidationFailure {
  const CollectionModelIdFailure();
}

class CollectionModelIdMissingFailure extends CollectionModelIdFailure {
  const CollectionModelIdMissingFailure();
}

class CollectionModelIdInvalidFailure extends CollectionModelIdFailure {
  const CollectionModelIdInvalidFailure();
}
