import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/purchase/exception/purchase_id_exception.dart';
import 'package:baladeston/domain/purchase/failure/purchase_failure.dart';
import 'package:baladeston/domain/purchase/repository/purchase_repository.dart';
import 'package:baladeston/domain/purchase/usecase/delete_purchase_by_id/delete_purchase_by_id_usecase_business_rule.dart';

class DeletePurchaseByIdUseCase {
  final PurchaseRepository repository;

  const DeletePurchaseByIdUseCase({
    required this.repository,
  });

  Future<Result<int, PurchaseFailure>> call({
    required int id,
  }) async {
    try {
      final rule = DeletePurchaseByIdUseCaseBusinessRule(
        id: id,
      );
      rule.validate();
    } on PurchaseIdException catch (e) {
      return Result.failure(
        PurchaseValidationFailure(e.message),
      );
    }

    return repository.deletePurchaseById(
      id: id,
    );
  }
}
