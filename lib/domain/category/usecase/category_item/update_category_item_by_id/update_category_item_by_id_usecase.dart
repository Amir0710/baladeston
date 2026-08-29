import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/category/entity/category_item_entity/category_item_entity.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/repository/item/category_item_repository.dart';
import 'package:baladeston/domain/category/usecase/category_item/update_category_item_by_id/update_category_item_by_id_usecase_business_rule.dart';

class UpdateCategoryItemByIdUseCase {
  const UpdateCategoryItemByIdUseCase({required this.repository});

  final CategoryItemRepository repository;

  Future<Result<CategoryItemEntity, CategoryFailure>> call({
    required int id,
    required CategoryItemEntity item,
  }) async {
    final rule = UpdateCategoryItemByIdUsecaseBusinessRule(id: id, categoryItem: item);
    final validation = rule.validate();
      return validation.when(
        success: (_) => repository.updateCategoryItemById(id: id, item: item),
        failure: (failure) => Future.value(Result.failure(failure)),
      );
  }
}
