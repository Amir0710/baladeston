import 'package:baladeston/data/purchase/filter/purchase_query_filter.dart';
import 'package:baladeston/domain/purchase/entity/purchase_entity.dart';
import 'package:baladeston/domain/purchase/exception/purchase_entity_exception.dart';
import 'package:baladeston/domain/purchase/exception/purchase_filter_exception.dart';

class UpdatePurchaseByFilterUseCaseBusinessRule {
  final PurchaseQueryFilter filter;
  final PurchaseEntity entity;

  const UpdatePurchaseByFilterUseCaseBusinessRule({
    required this.filter,
    required this.entity,
  });

  void validate() {
    _validateFilterNotEmpty();
    _validateFilterRange();
    _validateEntity();
    _validateUpdatableFields();
    _validateBusinessState();
  }

  /// --------------------------------------------------
  /// Filter validations (bulk guard)
  /// --------------------------------------------------

  void _validateFilterNotEmpty() {
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

  void _validateFilterRange() {
    if (filter.limit <= 0 || filter.offset < 0) {
      throw const PurchaseFilterRangeException();
    }
  }

  /// --------------------------------------------------
  /// Entity validations
  /// --------------------------------------------------

  void _validateEntity() {
    // entity non-null by type, but domain explicitly has exception
    if (entity == null) {
      throw const PurchaseEntityNullException();
    }
  }

  /// Prevent empty update payload
  void _validateUpdatableFields() {
    final hasAnyUpdatableField =
        entity.status != null ||
            entity.finalPrice != null ||
            entity.discountId != null ||
            entity.expiresAt != null;

    if (!hasAnyUpdatableField) {
      throw const PurchaseEntityValidationException();
    }
  }

  /// Domain rule: cancelled purchase must not be updated
  void _validateBusinessState() {
    if (entity.status == 'cancelled') {
      throw const PurchaseEntityInvalidStateException();
    }
  }
}
