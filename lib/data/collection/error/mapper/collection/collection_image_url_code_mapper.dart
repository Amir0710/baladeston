import 'package:baladeston/data/collection/api/error_codes/collection/collection_image_url_error_code.dart'
    as codes;
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/failure/server/code/collection_model_image_url_failure.dart';

class CollectionImageUrlCodeMapper {
  const CollectionImageUrlCodeMapper();

  static final Map<String, CollectionFailure Function()> _map = {
    codes.CollectionImageUrlErrorCodes.urlInvalidFormat: () =>
        const CollectionImageUrlInvalidFormatFailure(),
    codes.CollectionImageUrlErrorCodes.urlUnsupportedScheme: () =>
        const CollectionImageUrlUnsupportedSchemeFailure(),
    codes.CollectionImageUrlErrorCodes.urlInvalidStructural: () =>
        const CollectionImageUrlStructuralFailure(),
    codes.CollectionImageUrlErrorCodes.urlInvalidLength: () =>
        const CollectionImageUrlInvalidLengthFailure(),
  };

  static CollectionFailure? map(String? code) {
    if (code == null) return null;
    final factory = _map[code];
    return factory?.call();
  }
}
