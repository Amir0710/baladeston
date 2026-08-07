import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/repository/item/category_item_repository.dart';
import 'package:baladeston/domain/category/usecase/category_item/delete_category_item_by_id/delete_category_item_by_id_usecase_business_rule.dart';

class DeleteCategoryItemByIdUseCase {
  final CategoryItemRepository repository;

  const DeleteCategoryItemByIdUseCase({
    required this.repository,
  });

  Future<Result<int, CategoryFailure>> call({
    required int id,
  }) async {
    final businessRule = DeleteCategoryItemByIdUsecaseBusinessRule(id: id);
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.deleteCategoryItemById(itemId: id),
      failure: (failure) => Result.failure(failure),
    );
  }
}
