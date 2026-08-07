import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/discount/entity/discount_entity.dart';
import 'package:baladeston/domain/discount/exception/discount_entity_exception.dart';
import 'package:baladeston/domain/discount/failure/discount_failure.dart';
import 'package:baladeston/domain/discount/repository/discount_repository.dart';
import 'package:baladeston/domain/discount/usecase/update_discount_by_id/update_discount_by_id_usecase_business_rule.dart';

class UpdateDiscountByIdUseCase {
  final DiscountRepository repository;

  const UpdateDiscountByIdUseCase({required this.repository});

  Future<Result<DiscountEntity, DiscountFailure>> call({
    required int id,
    required DiscountEntity discount,
  }) async {
    try {
      final businessRule = UpdateDiscountByIdUsecaseBusinessRule(
        id: id,
        discount: discount,
      );

      businessRule.validate();
    } on DiscountEntityException catch (e) {
      return Result.failure(
        DiscountValidationFailure(e.message),
      );
    }

    return repository.updateDiscountById(
      id: id,
      discount: discount,
    );
  }
}
