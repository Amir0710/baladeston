import 'package:baladeston/data/collection/api/error_codes/collection_item/collection_item_id_error_code.dart'
as codes;
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/failure/server/code/collection_item_model_id_failure.dart';

final class CollectionItemIdCodeMapper {
  const CollectionItemIdCodeMapper();

  static final Map<String, CollectionFailure Function()> _registry = {
    codes.CollectionItemIdErrorCodes.required: () =>
    const CollectionItemModelIdRequiredFailure(),
    codes.CollectionItemIdErrorCodes.invalid: () =>
    const CollectionItemModelIdInvalidFailure(),
  };

  static CollectionFailure? map(String? code) {
    if (code == null) return null;
    final factory = _registry[code];
    return factory?.call();
  }
}
