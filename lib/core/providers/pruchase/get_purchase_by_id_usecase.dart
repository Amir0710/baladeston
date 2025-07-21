import 'package:baladeston/domain/entitys/purchase/purchase.dart';
import 'package:baladeston/domain/repositories/purchase_repository.dart';

class GetPurchaseByIdUseCase {
  final PurchaseRepository repository;

  GetPurchaseByIdUseCase(this.repository);

  Future<Purchase> call(int purchaseId) {
    return repository.getPurchaseById(purchase: purchaseId);
  }
}
