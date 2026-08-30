import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/discount/entity/discount_entity.dart';
import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';
import 'package:baladeston/domain/discount/repository/discount_repository.dart';
import 'package:baladeston/domain/discount/usecase/discount/get_discount_by_id/get_discount_by_id_usecase_business_rule.dart';

class GetDiscountByIdUseCase {
  final DiscountRepository repository;

  const GetDiscountByIdUseCase({required this.repository});

  Future<Result<DiscountEntity, DiscountFailure>> call({
    required int id,
  }) async {
    final businessRule = GetDiscountByIdUsecaseBusinessRule(id: id);
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.getDiscountById(id: id),
      failure: (failure) => Result.failure(failure),
    );
  }
}
