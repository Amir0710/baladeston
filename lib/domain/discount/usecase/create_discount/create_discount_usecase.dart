import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/discount/entity/discount_entity.dart';
import 'package:baladeston/domain/discount/exception/discount_entity_exception.dart';
import 'package:baladeston/domain/discount/failure/discount_failure.dart';
import 'package:baladeston/domain/discount/repository/discount_repository.dart';
import 'package:baladeston/domain/discount/usecase/create_discount/create_discount_usecase_business_rule.dart';

class CreateDiscountUseCase {
  final DiscountRepository repository;

  const CreateDiscountUseCase({required this.repository});

  Future<Result<DiscountEntity, DiscountFailure>> call({
    required DiscountEntity discount,
  }) async {
    try {
      final businessRule =
      CreateDiscountUseCaseBusinessRule(discount: discount);
      businessRule.validate();
    } on DiscountEntityException catch (e) {
      return Result.failure(
        DiscountValidationFailure(e.message),
      );
    }

    return repository.createDiscount(discount: discount);
  }
}
