import 'package:baladeston/domain/entitys/purchase/purchase_entity.dart';
import 'package:baladeston/domain/repositories/purchase_repository.dart';

class DeletePurchaseByIdUseCase {
  final PurchaseRepository repository;

  DeletePurchaseByIdUseCase(this.repository);

  Future<void> call({required int id} ) {
    return repository.deletePurchaseById(id : id );
  }
}
