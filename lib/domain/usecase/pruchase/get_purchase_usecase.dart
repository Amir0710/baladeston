import 'package:baladeston/domain/entitys/purchase/purchase_entity.dart';
import 'package:baladeston/domain/filters/purchase_query_filter.dart';
import 'package:baladeston/domain/repositories/purchase_repository.dart';

class GetPurchaseUseCase {
  final PurchaseRepository repository;

  GetPurchaseUseCase(this.repository);

  Future<List<PurchaseEntity>> call(PurchaseQueryFilter filter ) {
    return repository.getPurchase(filter : filter );
  }
}
