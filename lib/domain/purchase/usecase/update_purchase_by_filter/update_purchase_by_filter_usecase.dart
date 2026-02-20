
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/purchase/filter/purchase_query_filter.dart';
import 'package:baladeston/domain/purchase/entity/purchase_entity.dart';
import 'package:baladeston/domain/purchase/exception/purchase_entity_exception.dart';
import 'package:baladeston/domain/purchase/exception/purchase_filter_exception.dart';
import 'package:baladeston/domain/purchase/failure/purchase_failure.dart';
import 'package:baladeston/domain/purchase/repository/purchase_repository.dart';
import 'update_purchase_by_filter_usecase_business_rule.dart';

class UpdatePurchaseByFilterUseCase {
  final PurchaseRepository repository;

  const UpdatePurchaseByFilterUseCase({
    required this.repository,
  });

  Future<Result<void, PurchaseFailure>> call({
    required PurchaseQueryFilter filter,
    required PurchaseEntity entity,
  }) async {
    try {
      final rule = UpdatePurchaseByFilterUseCaseBusinessRule(
        filter: filter,
        entity: entity,
      );
      rule.validate();
    } on PurchaseFilterException catch (e) {
      return Result.failure(
        PurchaseValidationFailure(e.message),
      );
    } on PurchaseEntityException catch (e) {
      return Result.failure(
        PurchaseValidationFailure(e.message),
      );
    }

    return repository.updatePurchaseByFilter(
      filter: filter,
      purchase: entity,
    );
  }
}
