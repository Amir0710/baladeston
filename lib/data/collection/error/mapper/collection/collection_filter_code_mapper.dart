import 'package:baladeston/data/collection/api/error_codes/collection/collection_filter_error_code.dart'
    as codes;
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/failure/server/code/collection_item_model_filter_failure.dart';
import 'package:baladeston/domain/collection/failure/server/code/collection_model_filter_failure.dart';

final class CollectionFilterCodeMapper {
  const CollectionFilterCodeMapper();

  static final Map<String, CollectionFailure Function()> _registry = {
    // ids
    codes.CollectionFilterErrorCodes.invalidIds: () =>
        const CollectionItemModelFilterInvalidIdsFailure(),

    // searchTerm
    codes.CollectionFilterErrorCodes.invalidSearchTerm: () =>
        const CollectionModelFilterInvalidSearchTermFailure(),

    // ownerId
    codes.CollectionFilterErrorCodes.invalidOwnerId: () =>
        const CollectionModelFilterInvalidOwnerIdFailure(),

    // status
    codes.CollectionFilterErrorCodes.invalidStatus: () =>
        const CollectionModelFilterInvalidStatusFailure(),

    // minCount / maxCount
    codes.CollectionFilterErrorCodes.invalidMinCount: () =>
        const CollectionModelFilterInvalidMinCountFailure(),
    codes.CollectionFilterErrorCodes.invalidMaxCount: () =>
        const CollectionModelFilterInvalidMaxCountFailure(),
    codes.CollectionFilterErrorCodes.invalidCountRange: () =>
        const CollectionModelFilterInvalidCountRangeFailure(),

    // minPrice / maxPrice
    codes.CollectionFilterErrorCodes.invalidMinPrice: () =>
        const CollectionModelFilterInvalidMinPriceFailure(),
    codes.CollectionFilterErrorCodes.invalidMaxPrice: () =>
        const CollectionModelFilterInvalidMaxPriceFailure(),
    codes.CollectionFilterErrorCodes.invalidPriceRange: () =>
        const CollectionModelFilterInvalidPriceRangeFailure(),

    // limit
    codes.CollectionFilterErrorCodes.invalidLimit: () =>
        const CollectionModelFilterInvalidLimitFailure(),

    // offset
    codes.CollectionFilterErrorCodes.invalidOffset: () =>
        const CollectionModelFilterInvalidOffsetFailure(),

    // order
    codes.CollectionFilterErrorCodes.invalidOrder: () =>
        const CollectionModelFilterInvalidOrderFailure(),

    // empty
    codes.CollectionFilterErrorCodes.emptyFilter: () =>
        const CollectionModelFilterEmptyFailure(),
  };

  static CollectionFailure? map(String? code) {
    if (code == null) return null;
    return _registry[code]?.call();
  }
}
