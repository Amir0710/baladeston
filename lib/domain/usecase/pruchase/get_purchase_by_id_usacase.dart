import 'package:baladeston/domain/entitys/purchase/purchase_entity.dart';
import 'package:baladeston/domain/repositories/purchase_repository.dart';

class GetPurchaseByIdUseCase {
  final PurchaseRepository repository;

  GetPurchaseByIdUseCase(this.repository);

  Future<PurchaseEntity?> call({required int id} ) {
    return repository.getPurchaseById(id : id );
  }
}
