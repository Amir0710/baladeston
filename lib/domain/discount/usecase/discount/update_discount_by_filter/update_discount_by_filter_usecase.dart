import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/discount/filter/discount/discount_query_filter.dart';
import 'package:baladeston/domain/discount/entity/discount_entity.dart';
import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';
import 'package:baladeston/domain/discount/repository/discount_repository.dart';
import 'package:baladeston/domain/discount/usecase/discount/update_discount_by_filter/update_discount_by_filter_usecase_business_rule.dart';

class UpdateDiscountByFilterUseCase {
  final DiscountRepository repository;

  const UpdateDiscountByFilterUseCase({required this.repository});

  Future<Result<int, DiscountFailure>> call({
    required DiscountQueryFilter filter,
    required DiscountEntity discount,
  }) async {
    final businessRule = UpdateDiscountByFilterUsecaseBusinessRule(
      filter: filter,
      discount: discount,
    );
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.updateDiscountByFilter(
        filter: filter,
        discount: discount,
      ),
      failure: (failure) => Result.failure(failure),
    );
  }
}
