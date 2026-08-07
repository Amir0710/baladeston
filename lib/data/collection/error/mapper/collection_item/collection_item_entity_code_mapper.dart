import 'package:baladeston/data/collection/api/error_codes/collection_item/collection_item_model_error_code.dart'
as codes;
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/failure/server/code/collection_item_model_failure.dart';

final class CollectionItemModelCodeMapper {
  const CollectionItemModelCodeMapper();

  static final Map<String, CollectionFailure Function()> _registry = {
    // id
    codes.CollectionItemModelErrorCodes.invalidId: () =>
    const CollectionItemModelInvalidIdFailure(),

    // status
    codes.CollectionItemModelErrorCodes.invalidStatus: () =>
    const CollectionItemModelInvalidStatusFailure(),

    // adderId
    codes.CollectionItemModelErrorCodes.missingAdderId: () =>
    const CollectionItemModelMissingAdderIdFailure(),
    codes.CollectionItemModelErrorCodes.invalidAdderId: () =>
    const CollectionItemModelInvalidAdderIdFailure(),

    // videoId
    codes.CollectionItemModelErrorCodes.missingVideoId: () =>
    const CollectionItemModelMissingVideoIdFailure(),
    codes.CollectionItemModelErrorCodes.invalidVideoId: () =>
    const CollectionItemModelInvalidVideoIdFailure(),

    // collectionId
    codes.CollectionItemModelErrorCodes.missingCollectionId: () =>
    const CollectionItemModelMissingCollectionIdFailure(),
    codes.CollectionItemModelErrorCodes.invalidCollectionId: () =>
    const CollectionItemModelInvalidCollectionIdFailure(),

    // addedAt
    codes.CollectionItemModelErrorCodes.missingAddedAt: () =>
    const CollectionItemModelMissingAddedAtFailure(),
    codes.CollectionItemModelErrorCodes.invalidAddedAt: () =>
    const CollectionItemModelInvalidAddedAtFailure(),

    // lastTransaction
    codes.CollectionItemModelErrorCodes.missingLastTransaction: () =>
    const CollectionItemModelMissingLastTransactionFailure(),
    codes.CollectionItemModelErrorCodes.invalidLastTransaction: () =>
    const CollectionItemModelInvalidLastTransactionFailure(),
  };

  static CollectionFailure? map(String? code) {
    if (code == null) return null;
    return _registry[code]?.call();
  }
}
