import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/purchase/filter/purchase_query_filter.dart';
import 'package:baladeston/domain/purchase/entity/purchase_entity.dart';
import 'package:baladeston/domain/purchase/exception/purchase_filter_exception.dart';
import 'package:baladeston/domain/purchase/failure/purchase_failure.dart';
import 'package:baladeston/domain/purchase/repository/purchase_repository.dart';
import 'package:baladeston/domain/purchase/usecase/get_purchase_by_filter/get_purchase_by_filter_usecase_business_rule.dart';

class GetPurchaseByFilterUseCase {
  final PurchaseRepository repository;

  const GetPurchaseByFilterUseCase({
    required this.repository,
  });

  Future<Result<List<PurchaseEntity>, PurchaseFailure>> call({
    required PurchaseQueryFilter filter,
  }) async {
    try {
      final rule = GetPurchaseByFilterUseCaseBusinessRule(
        filter: filter,
      );
      rule.validate();
    } on PurchaseFilterException catch (e) {
      return Result.failure(
        PurchaseValidationFailure(e.message),
      );
    }

    return repository.getPurchaseByFilter(
      filter: filter,
    );
  }
}
