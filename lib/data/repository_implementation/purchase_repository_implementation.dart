import 'package:baladeston/data/datasources/remote/purchase_remote_datasource/purchase_api.dart';
import 'package:baladeston/data/mapper/entity/purchase_mapper.dart';
import 'package:baladeston/domain/entitys/purchase/purchase_entity.dart';
import 'package:baladeston/domain/filters/purchase_query_filter.dart';
import 'package:baladeston/domain/repositories/purchase_repository.dart';

class PurchaseRepositoryImplementation extends PurchaseRepository {
  final PurchaseApi _api;

  PurchaseRepositoryImplementation({required PurchaseApi api}) : _api = api;

  @override
  Future<int> countPurchase({required PurchaseQueryFilter filter}) async {
    try {
      return await _api.countPurchase(filter: filter);
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<PurchaseEntity> createPurchase(
      {required PurchaseEntity purchase}) async {
    try {
      final model = purchase.toModel();
      final resultModel = await _api.createPurchase(purchase: model);
      return resultModel.toEntity(); 
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<void> deletePurchaseByFilter({required PurchaseQueryFilter filter}) async {
    try {
      return await _api.deletePurchaseByFilter(filter: filter);
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<void> deletePurchaseById({required int id}) async {
    try {
      return await _api.deletePurchaseById(id : id );
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<PurchaseEntity> editPurchase({required PurchaseEntity purchase}) async {
    try {
      final model = purchase.toModel();
      final resultModel = await _api.editPurchase(purchase: model);
      return resultModel.toEntity(); 
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<List<PurchaseEntity>?> getPurchaseByFilter(
      {required PurchaseQueryFilter filter}) async {
    try {
      final resultModel = await _api.getPurchaseByFilter(filter: filter);
         return resultModel?.map((m) => m.toEntity()).toList();

    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<PurchaseEntity?> getPurchaseById({required int id}) async {
    try {
      final resultModel = await _api.getPurchaseById(id: id);
      return resultModel?.toEntity(); 
    } catch (e) {
      throw Exception('error $e');
    }
  }
}
