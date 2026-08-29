import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/category/entity/category_item_entity/category_item_entity.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/repository/item/category_item_repository.dart';
import 'package:baladeston/domain/category/usecase/category_item/add_category_Item/add_category_item_usecase_business_rule.dart';

class AddCategoryItemUseCase {
  const AddCategoryItemUseCase({required this.repository});

  final CategoryItemRepository repository;

  Future<Result<CategoryItemEntity, CategoryFailure>> call({
    required CategoryItemEntity item,
  }) async {
    final rule = AddCategoryItemUsecaseBusinessRule(categoryItem: item);
    final validation = rule.validate();
    return validation.when(
      success: (_) => repository.addCategoryItem(item: item),
      failure: (failure) => Future.value(Result.failure(failure)),
    );
  }
}
