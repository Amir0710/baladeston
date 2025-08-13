import 'package:baladeston/data/models/purchase/purchase_model.dart';
import 'package:baladeston/domain/filters/purchase_query_filter.dart';

abstract class PurchaseApi {
  Future<PurchaseModel> createPurchase({required PurchaseModel purchase});
  Future<List<PurchaseModel>?> getPurchaseByFilter(
      {required PurchaseQueryFilter filter});
  Future<PurchaseModel?> getPurchaseById({required int id});
  Future<PurchaseModel> editPurchase({required PurchaseModel purchase});
  Future<void> deletePurchaseById({required int id});
  Future<void> deletePurchaseByFilter({required PurchaseQueryFilter filter});
  Future<int> countPurchase({required PurchaseQueryFilter filter});
}
