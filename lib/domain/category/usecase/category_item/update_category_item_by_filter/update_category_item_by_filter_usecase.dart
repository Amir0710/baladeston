import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/category/filter/item/category_item_query_filter.dart';
import 'package:baladeston/domain/category/entity/category_item_entity/category_item_entity.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/repository/item/category_item_repository.dart';
import 'package:baladeston/domain/category/usecase/category_item/update_category_item_by_filter/update_category_item_by_filter_usecase_business_rule.dart';

class UpdateCategoryItemByFilterUseCase {
  const UpdateCategoryItemByFilterUseCase({required this.repository});

  final CategoryItemRepository repository;

  Future<Result<int, CategoryFailure>> call({
    required CategoryItemEntity item,
    required CategoryItemQueryFilter filter,
  }) async {
    final rule = UpdateCategoryItemByFilterUsecaseBusinessRule(
      item: item,
      filter: filter,
    );
    final validation = rule.validate();
    return validation.when(
      success: (_) =>
          repository.updateCategoryItemByFilter(item: item, filter: filter),
      failure: (failure) => Future.value(Result.failure(failure)),
    );
  }
}
