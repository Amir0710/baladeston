import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/category/filter/model/category_query_filter.dart';
import 'package:baladeston/domain/category/entity/category_entity/category_entity.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/repository/category/category_repository.dart';
import 'package:baladeston/domain/category/usecase/category/update_by_filter/update_category_by_filter_usecase_business_rule.dart';

class UpdateCategoryByFilterUseCase {
  final CategoryRepository repository;

  const UpdateCategoryByFilterUseCase({
    required this.repository,
  });

  Future<Result<int, CategoryFailure>> call({
    required CategoryEntity category,
    required CategoryQueryFilter filter,
  }) async {
    final businessRule = UpdateCategoryByFilterUsecaseBusinessRule(
      category: category,
      filter: filter,
    );

    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.updateCategoryByFilter(
        category: category,
        filter: filter,
      ),
      failure: (failure) => Result.failure(failure),
    );
  }
}
