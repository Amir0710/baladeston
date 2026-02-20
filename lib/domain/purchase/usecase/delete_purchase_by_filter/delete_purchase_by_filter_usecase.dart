import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/purchase/filter/purchase_query_filter.dart';
import 'package:baladeston/domain/purchase/exception/purchase_filter_exception.dart';
import 'package:baladeston/domain/purchase/failure/purchase_failure.dart';
import 'package:baladeston/domain/purchase/repository/purchase_repository.dart';
import 'delete_purchase_by_filter_usecase_business_rule.dart';

class DeletePurchaseByFilterUseCase {
  final PurchaseRepository repository;

  const DeletePurchaseByFilterUseCase({
    required this.repository,
  });

  Future<Result<void, PurchaseFailure>> call({
    required PurchaseQueryFilter filter,
  }) async {
    try {
      final rule = DeletePurchaseByFilterUseCaseBusinessRule(
        filter: filter,
      );
      rule.validate();
    } on PurchaseFilterException catch (e) {
      return Result.failure(
        PurchaseValidationFailure(e.message),
      );
    }

    return repository.deletePurchaseByFilter(
      filter: filter,
    );
  }
}
