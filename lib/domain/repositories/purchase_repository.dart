import 'package:baladeston/domain/entitys/purchase/purchase_entity.dart';
import 'package:baladeston/domain/filters/purchase_query_filter.dart';

abstract class PurchaseRepository {
  Future<PurchaseEntity> createPurchase({required PurchaseEntity purchase});
  Future<List<PurchaseEntity>?> getPurchaseByFilter(
      {required PurchaseQueryFilter filter});
  Future<PurchaseEntity?> getPurchaseById({required int id});
  Future<PurchaseEntity> editPurchase({required PurchaseEntity purchase});
  Future<void> deletePurchaseById({required int id});
  Future<void> deletePurchaseByFilter({required PurchaseQueryFilter filter});
  Future<int> countPurchase({required PurchaseQueryFilter filter});
}
