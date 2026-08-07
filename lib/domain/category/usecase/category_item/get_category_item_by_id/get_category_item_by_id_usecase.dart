import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/category/entity/category_item_entity/category_item_entity.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/repository/item/category_item_repository.dart';
import 'package:baladeston/domain/category/usecase/category_item/get_category_item_by_id/get_category_item_by_id_usecase_business_rule.dart';

class GetCategoryItemByIdUseCase {
  final CategoryItemRepository repository;

  const GetCategoryItemByIdUseCase({
    required this.repository,
  });

  Future<Result<CategoryItemEntity, CategoryFailure>> call({
    required int id,
  }) async {
    final businessRule = GetCategoryItemByIdUsecaseBusinessRule(
      id: id,
    );
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.getCategoryItemById(itemId: id),
      failure: (failure) => Result.failure(failure),
    );
  }
}
