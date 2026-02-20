import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/discount/filter/discount_query_filter.dart';
import 'package:baladeston/domain/discount/entity/discount_entity.dart';
import 'package:baladeston/domain/discount/exception/discount_entity_exception.dart';
import 'package:baladeston/domain/discount/failure/discount_failure.dart';
import 'package:baladeston/domain/discount/repository/discount_repository.dart';
import 'package:baladeston/domain/discount/usecase/get_discount_by_filter/get_discount_by_filter_usecase_business_rule.dart';

class GetDiscountByFilterUseCase {
  final DiscountRepository repository;

  const GetDiscountByFilterUseCase(this.repository);

  Future<Result<List<DiscountEntity>, DiscountFailure>> call({
    required DiscountQueryFilter filter,
  }) async {
    try {
      final businessRule =
      GetDiscountByFilterUsecaseBusinessRule(filter: filter);
      businessRule.validate();
    } on DiscountEntityException catch (e) {
      return Result.failure(
        DiscountValidationFailure(e.message),
      );
    }

    return repository.getDiscountByFilter(filter: filter);
  }
}
