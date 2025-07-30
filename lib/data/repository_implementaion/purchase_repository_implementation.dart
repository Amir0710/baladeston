import 'package:baladeston/domain/entitys/purchase/purchase_entity.dart';
import 'package:baladeston/domain/repositories/purchase_repository.dart';

class PurchaseRepositoryImplementation extends PurchaseRepository {
  @override
  Future<PurchaseEntity> createPurchase({required PurchaseEntity purchase}) {
    // TODO: implement createPurchase
    throw UnimplementedError();
  }

  @override
  Future<PurchaseEntity> editPurchase({required PurchaseEntity purchase}) {
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
