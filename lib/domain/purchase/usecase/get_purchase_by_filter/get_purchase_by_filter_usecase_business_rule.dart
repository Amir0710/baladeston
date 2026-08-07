import 'package:baladeston/data/purchase/filter/purchase_query_filter.dart';
import 'package:baladeston/domain/purchase/exception/purchase_filter_exception.dart';

class GetPurchaseByFilterUseCaseBusinessRule {
  final PurchaseQueryFilter filter;

  const GetPurchaseByFilterUseCaseBusinessRule({
    required this.filter,
  });

  void validate() {
    _validateNotEmpty();
    _validateRange();
  }

  /// Prevent deleting whole purchase table
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

  /// Defensive validation for bulk delete pagination
  void _validateRange() {
    if (filter.limit <= 0 || filter.offset < 0) {
      throw const PurchaseFilterRangeException();
    }
  }
}
