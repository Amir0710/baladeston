import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/discount/filter/discount/discount_query_filter.dart';
import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';
import 'package:baladeston/domain/discount/repository/discount_repository.dart';
import 'package:baladeston/domain/discount/usecase/discount/count_discount/count_discount_usecase_business_rule.dart';

class CountDiscountUseCase {
  final DiscountRepository repository;

  const CountDiscountUseCase({required this.repository});

  Future<Result<int, DiscountFailure>> call({
    required DiscountQueryFilter filter,
  }) async {
    final businessRule = CountDiscountUseCaseBusinessRule(filter: filter);
    final validationResult = businessRule.validate();

    return validationResult.when(


      success: (_) => repository.countAllDiscount(filter: filter),
      failure: (failure) => Result.failure(failure),
    );
  }
}
