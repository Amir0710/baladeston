import 'package:baladeston/domain/entities/purchase.dart';

abstract class PurchaseRepository {
  Future<void> createPurchase({required Purchase purchase});

  Future<Purchase> getPurchaseById({required int purchase});

  Future<List<Purchase>> getPurchase({
    required int userId,
    required int limit,
    required int offset,
  });

  Future<void> editPurchase({required Purchase purchase});
}
