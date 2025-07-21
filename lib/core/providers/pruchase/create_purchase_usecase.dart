import 'package:baladeston/domain/entitys/purchase/purchase.dart';
import 'package:baladeston/domain/repositories/purchase_repository.dart';

class CreatePurchaseUseCase {
  final PurchaseRepository repository;

  CreatePurchaseUseCase(this.repository);

  Future<void> call(Purchase purchase) {
    return repository.createPurchase(purchase: purchase);
  }
}
