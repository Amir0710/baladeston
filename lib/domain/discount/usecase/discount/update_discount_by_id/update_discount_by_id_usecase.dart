import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/discount/entity/discount_entity.dart';
import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';
import 'package:baladeston/domain/discount/repository/discount_repository.dart';
import 'package:baladeston/domain/discount/usecase/discount/update_discount_by_id/update_discount_by_id_usecase_business_rule.dart';

class UpdateDiscountByIdUseCase {
  final DiscountRepository repository;

  const UpdateDiscountByIdUseCase({required this.repository});

  Future<Result<DiscountEntity, DiscountFailure>> call({
    required int id,
    required DiscountEntity discount,
  }) async {
    final businessRule = UpdateDiscountByIdUseCaseBusinessRule(
      id: id,
      discount: discount,
    );
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.updateDiscountById(
        id: id,
        discount: discount,
      ),
      failure: (failure) => Result.failure(failure),
    );
  }
}
