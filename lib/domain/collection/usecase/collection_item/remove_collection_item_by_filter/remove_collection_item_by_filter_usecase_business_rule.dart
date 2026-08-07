import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/collection/filter/item/collection_item_query_filter.dart';
import 'package:baladeston/domain/collection/failure/domain/validation/collection_item_filter_failure.dart';

class RemoveCollectionItemByFilterUseCaseBusinessRule {
  final CollectionItemQueryFilter filter;

  const RemoveCollectionItemByFilterUseCaseBusinessRule({
    required this.filter,
  });

  Result<void, CollectionItemFilterFailure> validate() {
    return _filterValidation();
  }

  Result<void, CollectionItemFilterFailure> _filterValidation() {
    if (filter.collectionId! <= 0) {
      return const Result.failure(CollectionItemFilterInvalidCollectionIdFailure());
    }

    if (filter.status == null &&
        filter.collectionId == null) {
      return const Result.failure(CollectionItemFilterEmptyFailure());
    }

    if (filter.limit <= 0 || filter.limit > 20) {
      return const Result.failure(CollectionItemFilterInvalidLimitFailure());
    }

    return const Result.success(null);
  }
}
