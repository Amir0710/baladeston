import 'package:baladeston/data/purchase/filter/purchase_query_filter.dart';
import 'package:baladeston/domain/purchase/exception/purchase_filter_exception.dart';

class DeletePurchaseByFilterUseCaseBusinessRule {
  final PurchaseQueryFilter filter;

  const DeletePurchaseByFilterUseCaseBusinessRule({
    required this.filter,
  });

  void validate() {
    _validateNotNull();
    _validateNotEmpty();
    _validateRange();
  }

  void _validateNotNull() {
    if (filter == null) {
      throw const PurchaseFilterNullException();
    }
  }

  void _validateNotEmpty() {
    final hasAnyCondition =
        filter.id != null ||
            filter.status != null ||
            filter.userId != null ||
            filter.discountId != null ||
            filter.finalPrice != null ||
            filter.purchaseTime != null ||
            filter.expiresAt != null ||
            filter.searchTerm != null ||
            filter.searchId != null ||
            filter.videoSearchTerm != null ||
            filter.videoSearchId != null;

    if (!hasAnyCondition) {
      throw const PurchaseFilterEmptyException();
    }
  }

  void _validateRange() {
    if (filter.limit <= 0 || filter.offset < 0) {
      throw const PurchaseFilterRangeException();
    }
  }
}
