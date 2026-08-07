import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';

// this class is not abstract (using for general 404 purpose)

class CollectionNotFoundFailure extends BaseCollectionNotFoundFailure {
  const CollectionNotFoundFailure();
}

class CollectionModelNotFoundFailure extends CollectionNotFoundFailure {
  const CollectionModelNotFoundFailure();
}

class CollectionItemModelNotFoundFailure extends CollectionNotFoundFailure {
  const CollectionItemModelNotFoundFailure();
}
