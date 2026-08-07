import 'package:baladeston/data/collection/api/error_codes/collection/collection_image_url_error_code.dart'
    as codes;
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/failure/server/code/collection_model_image_url_failure.dart';

class CollectionImageUrlCodeMapper {
  const CollectionImageUrlCodeMapper();

  static final Map<String, CollectionFailure Function()> _map = {
    codes.CollectionImageUrlErrorCodes.emptyUrl: () =>
        const CollectionModelImageUrlEmptyUrlFailure(),
    codes.CollectionImageUrlErrorCodes.invalidFormat: () =>
        const CollectionModelImageUrlInvalidFormatFailure(),
    codes.CollectionImageUrlErrorCodes.unsupportedScheme: () =>
        const CollectionModelImageUrlUnsupportedSchemeFailure(),
    codes.CollectionImageUrlErrorCodes.unauthorizedHost: () =>
        const CollectionModelImageUrlUnauthorizedHostFailure(),
    codes.CollectionImageUrlErrorCodes.invalidId: () =>
        const CollectionModelImageUrlInvalidIdFailure(),
  };

  static CollectionFailure? map(String? code) {
    if (code == null) return null;
    final factory = _map[code];
    return factory?.call();
  }
}
