import 'package:baladeston/config/app_config.dart';
import 'package:baladeston/data/purchase/datasource/remote/purchase_remote_datasource/purchase_api.dart';
import 'package:baladeston/data/purchase/filter/purchase_query_filter.dart';
import 'package:baladeston/data/purchase/model/purchase_model.dart';

class PurchaseApiImplementation implements PurchaseApi {
  final String _baseUrl = AppConfig.apiBaseUrl;

  @override
  Future<List<PurchaseModel>> getPurchaseByFilter({
    required PurchaseQueryFilter filter,
  }) {
    // GET $_baseUrl/purchases
    throw UnimplementedError();
  }

  @override
  Future<PurchaseModel> getPurchaseById({
    required int id,
  }) {
    // GET $_baseUrl/purchases/$id
    throw UnimplementedError();
  }

  @override
  Future<PurchaseModel> createPurchase({
    required PurchaseModel purchase,
  }) {
    // POST $_baseUrl/purchases
    throw UnimplementedError();
  }

  @override
  Future<PurchaseModel> updatePurchaseById({
    required int id,
    required PurchaseModel purchase,
  }) {
    // PUT $_baseUrl/purchases/$id
    throw UnimplementedError();
  }

  @override
  Future<List<PurchaseModel>> updatePurchaseByFilter({
    required PurchaseQueryFilter filter,
    required PurchaseModel purchase,
  }) {
    // PUT $_baseUrl/purchases
    throw UnimplementedError();
  }

  @override
  Future<int> deletePurchaseById({
    required int id,
  }) {
    // DELETE $_baseUrl/purchases/$id
    throw UnimplementedError();
  }

  @override
  Future<List<int>> deletePurchaseByFilter({
    required PurchaseQueryFilter filter,
  }) {
    // DELETE $_baseUrl/purchases
    throw UnimplementedError();
  }

  @override
  Future<int> countAllPurchase({
    required PurchaseQueryFilter filter,
  }) {
    // GET $_baseUrl/purchases/count
    throw UnimplementedError();
  }
}
