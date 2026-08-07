import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/purchase/entity/purchase_entity.dart';
import 'package:baladeston/domain/purchase/exception/purchase_entity_exception.dart';
import 'package:baladeston/domain/purchase/exception/purchase_id_exception.dart';
import 'package:baladeston/domain/purchase/failure/purchase_failure.dart';
import 'package:baladeston/domain/purchase/repository/purchase_repository.dart';
import 'update_purchase_by_id_usecase_business_rule.dart';

class UpdatePurchaseByIdUseCase {
  final PurchaseRepository repository;

  const UpdatePurchaseByIdUseCase({required this.repository});

  Future<Result<PurchaseEntity, PurchaseFailure>> call({
    required int id,
    required PurchaseEntity purchase,
  }) async {
    try {
      final rule = UpdatePurchaseByIdUseCaseBusinessRule(
        id: id,
        entity: purchase,
      );
      rule.validate();
    } on PurchaseIdException catch (e) {
      return Result.failure(
        PurchaseValidationFailure(e.message),
      );
    } on PurchaseEntityException catch (e) {
      return Result.failure(
        PurchaseValidationFailure(e.message),
      );
    }

    return repository.updatePurchaseById(
      id: id,
      purchase: purchase,
    );
  }
}
