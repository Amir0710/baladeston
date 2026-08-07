import 'package:baladeston/data/collection/api/error_codes/not_found/collection_not_found_error_code.dart'
    as codes;
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/failure/domain/not_found/collection_not_found_failure.dart';

final class CollectionNotFoundCodeMapper {
  const CollectionNotFoundCodeMapper();

  static final Map<String, CollectionFailure Function()> _registry = {
    // collection
    codes.CollectionNotFoundErrorCode.collectionNotFound: () =>
        const CollectionModelNotFoundFailure(),

    // collection item
    codes.CollectionNotFoundErrorCode.collectionItemNotFound: () =>
        const CollectionItemModelNotFoundFailure(),
  };

  static CollectionFailure? map(String? code) {
    if (code == null) return null;
    return _registry[code]?.call();
  }
}
