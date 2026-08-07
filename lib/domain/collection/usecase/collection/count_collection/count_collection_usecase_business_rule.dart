import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/collection/filter/model/collection_query_filter.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/failure/domain/validation/collection_filter_failure.dart';

class CountCollectionUsecaseBusinessRule {
  final CollectionQueryFilter filter;

  const CountCollectionUsecaseBusinessRule({required this.filter});

  Result<void, CollectionFailure> validate() {
    return filterValidation();
  }

  Result<void, CollectionFailure> filterValidation() {
    if (filter.ownerId! <= 0) {
      return const Result.failure(CollectionFilterInvalidOwnerIdFailure());
    }

    if (filter.status == null &&
        filter.ownerId == null &&
        filter.ownerId == null &&
        filter.searchTerm == null) {
      return const Result.failure(CollectionFilterEmptyFailure());
    }
    if (filter.limit <= 0 || filter.limit > 20) {
      return const Result.failure(CollectionFilterInvalidLimitFailure());
    }
    return const Result.success(null);
  }
}
