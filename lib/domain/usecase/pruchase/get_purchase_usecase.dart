import 'package:baladeston/domain/entitys/purchase/purchase_entity.dart';
import 'package:baladeston/domain/repositories/purchase_repository.dart';

class GetPurchaseUseCase {
  final PurchaseRepository repository;

  GetPurchaseUseCase(this.repository);

  Future<List<PurchaseEntity>> call() {
    return repository.getPurchase();
  }
}
