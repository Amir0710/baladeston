import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/discount/filter/discount_query_filter.dart';
import 'package:baladeston/domain/discount/exception/discount_entity_exception.dart';
import 'package:baladeston/domain/discount/failure/discount_failure.dart';
import 'package:baladeston/domain/discount/repository/discount_repository.dart';
import 'package:baladeston/domain/discount/usecase/delete_discount_by_filter/delete_discount_by_filter_usecase_business_rule.dart';

class DeleteDiscountByFilterUseCase {
  final DiscountRepository repository;

  const DeleteDiscountByFilterUseCase({required this.repository});

  Future<Result<List<int>, DiscountFailure>> call({
    required DiscountQueryFilter filter,
  }) async {
    try {
      final businessRule =
      DeleteDiscountByFilterUsecaseBusinessRule(filter: filter);
      businessRule.validate();
    } on DiscountEntityException catch (e) {
      return Result.failure(
        DiscountValidationFailure(e.message),
      );
    }

    return repository.deleteDiscountByFilter(filter: filter);
  }
}
