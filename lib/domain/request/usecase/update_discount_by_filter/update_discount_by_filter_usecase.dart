import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/discount/filter/discount_query_filter.dart';
import 'package:baladeston/domain/discount/entity/discount_entity.dart';
import 'package:baladeston/domain/discount/exception/discount_entity_exception.dart';
import 'package:baladeston/domain/discount/failure/discount_failure.dart';
import 'package:baladeston/domain/discount/repository/discount_repository.dart';
import 'package:baladeston/domain/discount/usecase/update_discount_by_filter/update_discount_by_filter_usecase_business_rule.dart';

class UpdateDiscountByFilterUseCase {
  final DiscountRepository repository;

  const UpdateDiscountByFilterUseCase({required this.repository});

  Future<Result<List<DiscountEntity>, DiscountFailure>> call({
    required DiscountQueryFilter filter,
    required DiscountEntity discount,
  }) async {
    try {
      final businessRule =
      UpdateDiscountByFilterUsecaseBusinessRule(
        filter: filter,
        discount: discount,
      );

      businessRule.validate();
    } on DiscountEntityException catch (e) {
      return Result.failure(
        DiscountValidationFailure(e.message),
      );
    }

    return repository.updateDiscountByFilter(
      filter: filter,
      discount: discount,
    );
  }
}
