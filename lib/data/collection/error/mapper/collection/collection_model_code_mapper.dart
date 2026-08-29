import 'package:baladeston/data/collection/api/error_codes/collection/collection_model_error_code.dart'
as codes;
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/failure/server/code/collection_model_failure.dart';

final class CollectionModelCodeMapper {
  const CollectionModelCodeMapper();

  static final Map<String, CollectionFailure Function()> _registry = {
    // id
    codes.CollectionModelErrorCodes.invalidId: () =>
    const CollectionModelInvalidIdFailure(),

    // status
    codes.CollectionModelErrorCodes.invalidStatus: () =>
    const CollectionModelInvalidStatusFailure(),

    // count
    codes.CollectionModelErrorCodes.invalidCount: () =>
    const CollectionModelInvalidCountFailure(),

    // uniqueCode
    codes.CollectionModelErrorCodes.invalidUniqueCode: () =>
    const CollectionModelInvalidUniqueCodeFailure(),

    // ownerId
    codes.CollectionModelErrorCodes.invalidOwnerId: () =>
    const CollectionModelInvalidOwnerIdFailure(),

    // createdAt
    codes.CollectionModelErrorCodes.invalidCreatedAt: () =>
    const CollectionModelInvalidCreatedAtFailure(),

    // title
    codes.CollectionModelErrorCodes.invalidTitle: () =>
    const CollectionModelInvalidTitleFailure(),

    // lastTransaction
    codes.CollectionModelErrorCodes.invalidLastTransaction: () =>
    const CollectionModelInvalidLastTransactionFailure(),

    // avgRate
    codes.CollectionModelErrorCodes.invalidAvgRate: () =>
    const CollectionModelInvalidAvgRateFailure(),

    // rateCount
    codes.CollectionModelErrorCodes.invalidRateCount: () =>
    const CollectionModelInvalidRateCountFailure(),

    // price
    codes.CollectionModelErrorCodes.invalidPrice: () =>
    const CollectionModelInvalidPriceFailure(),

    // missing
    codes.CollectionModelErrorCodes.missingField: () =>
    const CollectionModelMissingField(),
  };

  static CollectionFailure? map(String? code) {
    if (code == null) return null;
    return _registry[code]?.call();
  }
}
