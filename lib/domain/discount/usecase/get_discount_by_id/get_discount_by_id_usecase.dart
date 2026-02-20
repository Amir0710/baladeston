import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/discount/entity/discount_entity.dart';
import 'package:baladeston/domain/discount/exception/discount_entity_exception.dart';
import 'package:baladeston/domain/discount/failure/discount_failure.dart';
import 'package:baladeston/domain/discount/repository/discount_repository.dart';
import 'package:baladeston/domain/discount/usecase/get_discount_by_id/get_discount_by_id_usecase_business_rule.dart';

class GetDiscountByIdUseCase {
  final DiscountRepository repository;

  const GetDiscountByIdUseCase(this.repository);

  Future<Result<DiscountEntity, DiscountFailure>> call({
    required int id,
  }) async {
    try {
      final businessRule =
      GetDiscountByIdUsecaseBusinessRule(id: id);
      businessRule.validate();
    } on DiscountEntityException catch (e) {
      return Result.failure(
        DiscountValidationFailure(e.message),
      );
    }

    return repository.getDiscountById(id: id);
  }
}
