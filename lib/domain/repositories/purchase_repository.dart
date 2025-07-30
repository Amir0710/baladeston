import 'package:baladeston/domain/entitys/purchase/purchase_entity.dart';
import 'package:baladeston/domain/filters/purchase_query_filter.dart';

abstract class PurchaseRepository {
  Future<PurchaseEntity> createPurchase({required PurchaseEntity purchase});


  Future<List<PurchaseEntity>> getPurchase({required PurchaseQueryFilter filter  });

  Future<PurchaseEntity> editPurchase({required PurchaseEntity purchase});
}
