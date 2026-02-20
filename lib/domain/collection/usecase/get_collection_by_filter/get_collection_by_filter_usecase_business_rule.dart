import 'package:baladeston/data/collection/filter/collection_query_filter.dart';
import 'package:baladeston/domain/collection/exception/collection_filter_exception.dart';

class GetCollectionByFilterUsecaseBusinessRule {
  final CollectionQueryFilter filter;

  const GetCollectionByFilterUsecaseBusinessRule({
    required this.filter,
  });

  void validate() {
    _validateLimit();
    _validateOffset();
    _validateMinMax();
    _validateOrder();
    _validateEmptyFilter();
  }

  void _validateLimit() {
    if (filter.limit <= 0) {
      throw CollectionFilterLimitException();
    }
  }

  void _validateOffset() {
    if (filter.offset < 0) {
      throw CollectionFilterOffsetException();
    }
  }

  void _validateMinMax() {
    if (filter.minCount != null &&
        filter.maxCount != null &&
        filter.minCount! > filter.maxCount!) {
      throw CollectionFilterMinMaxException();
    }
  }

  void _validateOrder() {
    const allowedOrders = ['name', 'createdAt', 'updatedAt'];
    if (!allowedOrders.contains(filter.order)) {
      throw CollectionFilterOrderException();
    }
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
