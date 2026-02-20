import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/purchase/entity/purchase_entity.dart';
import 'package:baladeston/domain/purchase/exception/purchase_entity_exception.dart';
import 'package:baladeston/domain/purchase/failure/purchase_failure.dart';
import 'package:baladeston/domain/purchase/repository/purchase_repository.dart';
import 'create_purchase_usecase_business_rule.dart';

class CreatePurchaseUseCase {
  final PurchaseRepository repository;

  const CreatePurchaseUseCase({
    required this.repository,
  });

  Future<Result<PurchaseEntity, PurchaseFailure>> call({
    required PurchaseEntity purchase,
  }) async {
    try {
      final rule = CreatePurchaseUseCaseBusinessRule(
        purchase: purchase,
      );
      rule.validate();
    } on PurchaseEntityException catch (e) {
      return Result.failure(
        PurchaseValidationFailure(e.message),
      );
    }

    return repository.createPurchase(
      purchase: purchase,
    );
  }
}
