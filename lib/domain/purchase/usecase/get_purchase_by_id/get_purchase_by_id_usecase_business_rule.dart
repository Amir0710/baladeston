import 'package:baladeston/domain/purchase/exception/purchase_id_exception.dart';

class GetPurchaseByIdUseCaseBusinessRule {
  final int id;

  const GetPurchaseByIdUseCaseBusinessRule({
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
