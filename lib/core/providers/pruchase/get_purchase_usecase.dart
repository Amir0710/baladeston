import 'package:baladeston/domain/entitys/purchase/purchase.dart';
import 'package:baladeston/domain/repositories/purchase_repository.dart';

class GetPurchaseUseCase {
  final PurchaseRepository repository;

  GetPurchaseUseCase(this.repository);

  Future<List<Purchase>> call() {
    return repository.getPurchase();
  }
}
