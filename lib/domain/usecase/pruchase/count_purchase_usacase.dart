import 'package:baladeston/domain/filters/purchase_query_filter.dart';
import 'package:baladeston/domain/repositories/purchase_repository.dart';

class CountPurchaseUseCase {
  final PurchaseRepository repository;

  CountPurchaseUseCase(this.repository);

  Future<int> call({required PurchaseQueryFilter filter} ) {
    return repository.countPurchase(filter : filter );
  }
}
