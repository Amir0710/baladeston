import 'package:baladeston/domain/purchase/entity/purchase_entity.dart';
import 'package:baladeston/domain/purchase/exception/purchase_entity_exception.dart';
import 'package:baladeston/domain/purchase/exception/purchase_id_exception.dart';

class UpdatePurchaseByIdUseCaseBusinessRule {
  final int id;
  final PurchaseEntity entity;

  const UpdatePurchaseByIdUseCaseBusinessRule({
    required this.id,
    required this.entity,
  });

  void validate() {
    _validateId();
    _validateEntity();
    _validateBusinessState();
  }

  /// --------------------------------------------------
  /// ID validation
  /// --------------------------------------------------

  void _validateId() {
    if (id <= 0) {
      throw const PurchaseIdInvalidException();
    }
  }

  /// --------------------------------------------------
  /// Entity validation
  /// --------------------------------------------------

  void _validateEntity() {
    // domain has explicit exception
    if (entity == null) {
      throw const PurchaseEntityNullException();
    }
  }

  /// --------------------------------------------------
  /// Business rules
  /// --------------------------------------------------

  /// Cancelled purchases must not be updated
  void _validateBusinessState() {
    if (entity.status == 'cancelled') {
      throw const PurchaseEntityInvalidStateException();
    }
  }
}
