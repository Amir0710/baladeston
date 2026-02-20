import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/purchase/filter/purchase_query_filter.dart';
import 'package:baladeston/domain/purchase/exception/purchase_filter_exception.dart';
import 'package:baladeston/domain/purchase/failure/purchase_failure.dart';
import 'package:baladeston/domain/purchase/repository/purchase_repository.dart';
import 'package:baladeston/domain/purchase/usecase/count_purchase/count_purchase_usecase_business_rule.dart';

class CountPurchaseUseCase {
  final PurchaseRepository repository;

  const CountPurchaseUseCase({
    required this.repository,
  });

  Future<Result<int, PurchaseFailure>> call({
    required PurchaseQueryFilter filter,
  }) async {
    try {
      final rule = CountPurchaseUseCaseBusinessRule(
        filter: filter,
      );
      rule.validate();
    } on PurchaseFilterException catch (e) {
      return Result.failure(
        PurchaseValidationFailure(e.message),
      );
    }

    return repository.countAllPurchase(
      filter: filter,
    );
  }
}
