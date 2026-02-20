import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/discount/filter/discount_query_filter.dart';
import 'package:baladeston/domain/discount/exception/discount_entity_exception.dart';
import 'package:baladeston/domain/discount/failure/discount_failure.dart';
import 'package:baladeston/domain/discount/repository/discount_repository.dart';
import 'package:baladeston/domain/discount/usecase/count_discount/count_discount_usecase_business_rule.dart';

class CountDiscountUseCase {
  final DiscountRepository repository;

  const CountDiscountUseCase(this.repository);

  Future<Result<int, DiscountFailure>> call({
    required DiscountQueryFilter filter,
  }) async {
    try {
      final businessRule =
      CountDiscountUsecaseBusinessRule(filter: filter);
      businessRule.validate();
    } on DiscountEntityException catch (e) {
      return Result.failure(
        DiscountValidationFailure(e.message),
      );
    }

    return repository.countAllDiscount(filter: filter);
  }
}
