import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/category/filter/item/category_item_query_filter.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/repository/item/category_item_repository.dart';
import 'package:baladeston/domain/category/usecase/category_item/delete_category_item_by_filter/delete_category_item_by_filter_usecase_business_rule.dart';

class DeleteCategoryItemByFilterUseCase {
  final CategoryItemRepository repository;

  const DeleteCategoryItemByFilterUseCase({
    required this.repository,
  });

  Future<Result<int, CategoryFailure>> call({
    required CategoryItemQueryFilter filter,
  }) async {
    final businessRule = DeleteCategoryItemByFilterUsecaseBusinessRule(
      filter: filter,
    );
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.deleteCategoryItemByFilter(filter: filter),
      failure: (failure) => Result.failure(failure),
    );
  }
}
