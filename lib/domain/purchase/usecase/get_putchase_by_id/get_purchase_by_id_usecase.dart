import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/purchase/entity/purchase_entity.dart';
import 'package:baladeston/domain/purchase/exception/purchase_id_exception.dart';
import 'package:baladeston/domain/purchase/failure/purchase_failure.dart';
import 'package:baladeston/domain/purchase/repository/purchase_repository.dart';
import 'get_purchase_by_id_usecase_business_rule.dart';

class GetPurchaseByIdUseCase {
  final PurchaseRepository repository;

  const GetPurchaseByIdUseCase({
    required this.repository,
  });

  Future<Result<PurchaseEntity, PurchaseFailure>> call({
    required int id,
  }) async {
    try {
      final rule = GetPurchaseByIdUseCaseBusinessRule(
        id: id,
      );
      rule.validate();
    } on PurchaseIdException catch (e) {
      return Result.failure(
        PurchaseValidationFailure(e.message),
      );
    }

    return repository.getPurchaseById(
      id: id,
    );
  }
}
