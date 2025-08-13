import 'package:baladeston/domain/entitys/purchase/purchase_entity.dart';
import 'package:baladeston/domain/filters/purchase_query_filter.dart';
import 'package:baladeston/domain/repositories/purchase_repository.dart';

class DeletePurchaseByFilterUseCase {
  final PurchaseRepository repository;

  DeletePurchaseByFilterUseCase(this.repository);

  Future<void> call({required PurchaseQueryFilter filter }) {
    return repository.deletePurchaseByFilter(filter : filter );
  }
}
