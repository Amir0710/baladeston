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

    // title
    codes.CollectionItemModelErrorCodes.invalidTitle: () =>
    const CollectionItemModelInvalidTitleFailure(),

    // videoId
    codes.CollectionItemModelErrorCodes.invalidVideoId: () =>
    const CollectionItemModelInvalidVideoIdFailure(),

    // collectionId
    codes.CollectionItemModelErrorCodes.invalidCollectionId: () =>
    const CollectionItemModelInvalidCollectionIdFailure(),

    // avgRate
    codes.CollectionItemModelErrorCodes.invalidAvgRate: () =>
    const CollectionItemModelInvalidAvgRateFailure(),

    // rateCount
    codes.CollectionItemModelErrorCodes.invalidRateCount: () =>
    const CollectionItemModelInvalidRateCountFailure(),

    // thumbnailUrl
    codes.CollectionItemModelErrorCodes.invalidThumbnailUrl: () =>
    const CollectionItemModelInvalidThumbnailUrlFailure(),

    // status
    codes.CollectionItemModelErrorCodes.invalidStatus: () =>
    const CollectionItemModelInvalidStatusFailure(),

    // addedAt
    codes.CollectionItemModelErrorCodes.invalidAddedAt: () =>
    const CollectionItemModelInvalidAddedAtFailure(),

    // lastTransaction
    codes.CollectionItemModelErrorCodes.invalidLastTransaction: () =>
    const CollectionItemModelInvalidLastTransactionFailure(),

    // adderId
    codes.CollectionItemModelErrorCodes.invalidAdderId: () =>
    const CollectionItemModelInvalidAdderIdFailure(),

    // missing
    codes.CollectionItemModelErrorCodes.missingField: () =>
    const CollectionItemModelMissingFieldFailure(),
  };

  static CollectionFailure? map(String? code) {
    if (code == null) return null;
    return _registry[code]?.call();
  }
}
