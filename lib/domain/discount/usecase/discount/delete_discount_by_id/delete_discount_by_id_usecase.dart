import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';
import 'package:baladeston/domain/discount/repository/discount_repository.dart';
import 'package:baladeston/domain/discount/usecase/discount/delete_discount_by_id/delete_discount_by_id_usecase_business_rule.dart';

class DeleteDiscountByIdUseCase {
  final DiscountRepository repository;

  const DeleteDiscountByIdUseCase({required this.repository});

  Future<Result<int, DiscountFailure>> call({
    required int id,
  }) async {
    final businessRule = DeleteDiscountByIdUsecaseBusinessRule(id: id);
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.deleteDiscountById(id: id),
      failure: (failure) => Result.failure(failure),
    );
  }
}
