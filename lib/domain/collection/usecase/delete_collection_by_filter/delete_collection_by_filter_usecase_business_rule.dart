import 'package:baladeston/data/collection/filter/collection_query_filter.dart';
import 'package:baladeston/domain/collection/exception/collection_filter_exception.dart';

class DeleteCollectionByFilterUsecaseBusinessRule {
  final CollectionQueryFilter filter;

  const DeleteCollectionByFilterUsecaseBusinessRule({
    required this.filter,
  });

  void validate() {
    _validateEmptyFilter();
  }

  void _validateEmptyFilter() {
    final hasAnyFilter =
        filter.id != null ||
            filter.searchId != null ||
            (filter.searchTerm != null && filter.searchTerm!.isNotEmpty) ||
            filter.status != null ||
            filter.ownerId != null ||
            filter.minCount != null ||
            filter.maxCount != null;
    if (!hasAnyFilter) {
      throw CollectionFilterEmptyException();
    }
  }
}
