import 'package:baladeston/domain/entitys/purchase/purchase_entity.dart';
import 'package:baladeston/domain/repositories/purchase_repository.dart';

class CreatePurchaseUseCase {
  final PurchaseRepository repository;

  CreatePurchaseUseCase(this.repository);

  Future<PurchaseEntity> call({required PurchaseEntity purchase}) {
    return repository.createPurchase(purchase: purchase);
  }
}
