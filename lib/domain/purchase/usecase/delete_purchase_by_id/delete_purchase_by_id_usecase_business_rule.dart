import 'package:baladeston/domain/purchase/exception/purchase_id_exception.dart';

class DeletePurchaseByIdUseCaseBusinessRule {
  final int id;

  const DeletePurchaseByIdUseCaseBusinessRule({
    required this.id,
  });

  void validate() {
    _validateId();
  }

  void _validateId() {
    if (id <= 0) {
      throw const PurchaseIdInvalidException();
    }
  }
}
