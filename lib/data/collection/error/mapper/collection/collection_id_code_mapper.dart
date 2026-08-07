import 'package:baladeston/data/collection/api/error_codes/collection/collection_id_error_code.dart'
    as codes;
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/failure/domain/validation/collection_id_failure.dart';
import 'package:baladeston/domain/collection/failure/server/code/collection_model_id_failure.dart';

class CollectionIdCodeMapper {
  const CollectionIdCodeMapper();

  static final Map<String, CollectionFailure Function()> _map = {
    codes.CollectionIdErrorCodes.required: () =>
        const CollectionModelIdMissingFailure(),
    codes.CollectionIdErrorCodes.invalid: () =>
        const CollectionModelIdInvalidFailure(),
  };

  static CollectionFailure? map(String? code) {
    if (code == null) return null;
    final factory = _map[code];
    return factory?.call();
  }
}
