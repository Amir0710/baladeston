import 'package:baladeston/core/model/paginated_response_model.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/category/filter/item/category_item_query_filter.dart';
import 'package:baladeston/domain/category/entity/category_item_entity/category_item_entity.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/repository/item/category_item_repository.dart';
import 'package:baladeston/domain/category/usecase/category_item/get_category_item_by_filter/get_category_item_by_filter_usecase_business_rule.dart';

class GetCategoryItemByFilterUseCase {
  final CategoryItemRepository repository;

  const GetCategoryItemByFilterUseCase({
    required this.repository,
  });

  Future<Result<PaginatedResponseModel<CategoryItemEntity>, CategoryFailure>> call({
    required CategoryItemQueryFilter filter,
  }) async {
    final businessRule = GetCategoryItemByFilterUsecaseBusinessRule(
      filter: filter,
    );
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.getCategoryItemByFilter(categoryItemFilter: filter),
      failure: (failure) => Result.failure(failure),
    );
  }
}
