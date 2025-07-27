import 'package:baladeston/domain/entitys/purchase/purchase_entity.dart';
import 'package:baladeston/domain/repositories/purchase_repository.dart';

class PurchaseRepositoryImplementation extends PurchaseRepository {
  @override
  Future<void> createPurchase({required PurchaseEntity purchase}) {
    // TODO: implement createPurchase
    throw UnimplementedError();
  }

  @override
  Future<void> editPurchase({required PurchaseEntity purchase, required int purchaseId}) {
    // TODO: implement editPurchase
    throw UnimplementedError();
  }

  @override
  Future<List<PurchaseEntity>> getPurchase({required}) {
    // TODO: implement getPurchase
    throw UnimplementedError();
  }

  @override
  Future<PurchaseEntity> getPurchaseById({required int purchase}) {
    // TODO: implement getPurchaseById
    throw UnimplementedError();
  }
}