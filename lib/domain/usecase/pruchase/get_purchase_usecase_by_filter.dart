import 'package:baladeston/domain/entitys/purchase/purchase_entity.dart';
import 'package:baladeston/domain/filters/purchase_query_filter.dart';
import 'package:baladeston/domain/repositories/purchase_repository.dart';

class GetPurchaseByFilterUseCase {
  final PurchaseRepository repository;

  GetPurchaseByFilterUseCase(this.repository);

  Future<List<PurchaseEntity>?> call({required PurchaseQueryFilter filter} ) {
    return repository.getPurchaseByFilter(filter : filter );
  }
}
