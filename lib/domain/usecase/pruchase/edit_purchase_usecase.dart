import 'package:baladeston/domain/entitys/purchase/purchase_entity.dart';
import 'package:baladeston/domain/repositories/purchase_repository.dart';

class EditPurchaseUseCase {
  final PurchaseRepository repository;

  EditPurchaseUseCase(this.repository);

  Future<void> call(PurchaseEntity purchase, int purchaseId) {
    return repository.editPurchase(purchase: purchase, purchaseId: purchaseId);
  }
}
