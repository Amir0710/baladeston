import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/discount/exception/discount_entity_exception.dart';
import 'package:baladeston/domain/discount/failure/discount_failure.dart';
import 'package:baladeston/domain/discount/repository/discount_repository.dart';
import 'package:baladeston/domain/discount/usecase/delete_discount_by_id/delete_discount_by_id_usecase_business_rule.dart';

class DeleteDiscountByIdUseCase {
  final DiscountRepository repository;

  const DeleteDiscountByIdUseCase(this.repository);

  Future<Result<int, DiscountFailure>> call({
    required int id,
  }) async {
    try {
      final businessRule =
      DeleteDiscountByIdUsecaseBusinessRule(id: id);
      businessRule.validate();
    } on DiscountEntityException catch (e) {
      return Result.failure(
        DiscountValidationFailure(e.message),
      );
    }

    return repository.deleteDiscountById(id: id);
  }
}
