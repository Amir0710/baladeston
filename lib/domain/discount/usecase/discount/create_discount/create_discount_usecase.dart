import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/discount/entity/discount_entity.dart';
import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';
import 'package:baladeston/domain/discount/repository/discount_repository.dart';
import 'package:baladeston/domain/discount/usecase/discount/create_discount/create_discount_usecase_business_rule.dart';

class CreateDiscountUseCase {
  final DiscountRepository repository;

  const CreateDiscountUseCase({required this.repository});

  Future<Result<DiscountEntity, DiscountFailure>> call({
    required DiscountEntity discount,
  }) async {
    final businessRule = CreateDiscountUseCaseBusinessRule(discount: discount);
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.createDiscount(discount: discount),
      failure: (failure) => Result.failure(failure),
    );
  }
}
