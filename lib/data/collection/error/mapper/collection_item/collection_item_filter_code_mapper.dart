import 'package:baladeston/data/collection/api/error_codes/collection_item/collection_item_filter_error_code.dart'
    as codes;
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/failure/server/code/collection_item_model_filter_failure.dart';

final class CollectionItemFilterCodeMapper {
  const CollectionItemFilterCodeMapper();

  static final Map<String, CollectionFailure Function()> _registry = {
    // ids
    codes.CollectionItemFilterErrorCodes.invalidIds: () =>
    const CollectionItemModelFilterInvalidIdsFailure(),

    // collectionId
    codes.CollectionItemFilterErrorCodes.invalidCollectionId: () =>
    const CollectionItemModelFilterInvalidCollectionIdFailure(),

    // status
    codes.CollectionItemFilterErrorCodes.invalidStatusValue: () =>
        const CollectionItemModelFilterInvalidStatusValueFailure(),

    // adderId
    codes.CollectionItemFilterErrorCodes.invalidAdderId: () =>
        const CollectionItemModelFilterInvalidAdderIdFailure(),

    // limit
    codes.CollectionItemFilterErrorCodes.invalidLimit: () =>
        const CollectionItemModelFilterInvalidLimitFailure(),

    // offset
    codes.CollectionItemFilterErrorCodes.invalidOffset: () =>
        const CollectionItemModelFilterInvalidOffsetFailure(),

    // order
    codes.CollectionItemFilterErrorCodes.invalidOrder: () =>
        const CollectionItemModelFilterInvalidOrderFailure(),

    // general
    codes.CollectionItemFilterErrorCodes.filterEmpty: () =>
        const CollectionItemModelFilterEmptyFailure(),
  };

  static CollectionFailure? map(String? code) {
    if (code == null) return null;
    return _registry[code]?.call();
  }
}
