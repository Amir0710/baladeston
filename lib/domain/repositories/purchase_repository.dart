
import 'package:baladeston/domain/entitys/purchase/purchase_entity.dart';

abstract class PurchaseRepository {
  Future<void> createPurchase({required PurchaseEntity purchase});

  Future<PurchaseEntity> getPurchaseById({required int purchase});

  Future<List<PurchaseEntity>> getPurchase({
required
  });

  Future<void> editPurchase({required PurchaseEntity purchase , required int purchaseId});
}
