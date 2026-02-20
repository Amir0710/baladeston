import 'package:baladeston/data/purchase/filter/purchase_query_filter.dart';
import 'package:baladeston/data/purchase/model/purchase_model.dart';

abstract class PurchaseApi {
  Future<List<PurchaseModel>> getPurchaseByFilter({
    required PurchaseQueryFilter filter,
  });

  Future<PurchaseModel> getPurchaseById({
    required int id,
  });

  Future<PurchaseModel> createPurchase({
    required PurchaseModel purchase,
  });

  Future<PurchaseModel> updatePurchaseById({
    required int id,
    required PurchaseModel purchase,
  });

  Future<List<PurchaseModel>> updatePurchaseByFilter({
    required PurchaseQueryFilter filter,
    required PurchaseModel purchase,
  });

  Future<int> deletePurchaseById({
    required int id,
  });

  Future<List<int>> deletePurchaseByFilter({
    required PurchaseQueryFilter filter,
  });

  Future<int> countAllPurchase({
    required PurchaseQueryFilter filter,
  });
}
