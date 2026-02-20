import 'package:baladeston/domain/purchase/entity/purchase_entity.dart';
import 'package:baladeston/domain/purchase/exception/purchase_entity_exception.dart';

class CreatePurchaseUseCaseBusinessRule {
  final PurchaseEntity purchase;

  const CreatePurchaseUseCaseBusinessRule({
    required this.purchase,
  });

  void validate() {
    _validateEntity();
    _validateRequiredFields();
    _validateInitialState();
  }

  void _validateEntity() {
    if (purchase == null) {
      throw const PurchaseEntityNullException();
    }
  }

  void _validateRequiredFields() {
    if (purchase.userId <= 0 || purchase.finalPrice <= 0) {
      throw const PurchaseRequiredFieldException();
    }
  }

  void _validateInitialState() {
    if (purchase.status != null && purchase.status == 'cancelled') {
      throw const PurchaseEntityInvalidStateException();
    }
  }
}
