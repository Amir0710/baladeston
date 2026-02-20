import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/purchase/filter/purchase_query_filter.dart';
import 'package:baladeston/domain/purchase/entity/purchase_entity.dart';
import 'package:baladeston/domain/purchase/failure/purchase_failure.dart';
abstract class PurchaseRepository {

  /// Get purchases by filter
  Future<Result<List<PurchaseEntity>, PurchaseFailure>> getPurchaseByFilter({
    required PurchaseQueryFilter filter,
  });

  /// Get single purchase by id
  Future<Result<PurchaseEntity, PurchaseFailure>> getPurchaseById({
    required int id,
  });

  /// Create new purchase
  Future<Result<PurchaseEntity, PurchaseFailure>> createPurchase({
    required PurchaseEntity purchase,
  });

  /// Update purchase by id
  Future<Result<PurchaseEntity, PurchaseFailure>> updatePurchaseById({
    required int id,
    required PurchaseEntity purchase,
  });

  /// Update purchases by filter
  Future<Result<List<PurchaseEntity>, PurchaseFailure>> updatePurchaseByFilter({
    required PurchaseQueryFilter filter,
    required PurchaseEntity purchase,
  });

  /// Delete purchase by id
  Future<Result<int, PurchaseFailure>> deletePurchaseById({
    required int id,
  });

  /// Delete purchases by filter
  Future<Result<List<int>, PurchaseFailure>> deletePurchaseByFilter({
    required PurchaseQueryFilter filter,
  });

  /// Count purchases by filter
  Future<Result<int, PurchaseFailure>> countAllPurchase({
    required PurchaseQueryFilter filter,
  });
}
