import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/category/filter/model/category_query_filter.dart';
import 'package:baladeston/domain/category/entity/category_entity/category_entity.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/repository/category/category_repository.dart';
import 'package:baladeston/domain/category/usecase/category/get_by_filter/get_category_by_filter_usecase_business_rule.dart';

class GetCategoryByFilterUseCase {
  final CategoryRepository repository;

  const GetCategoryByFilterUseCase({
    required this.repository,
  });

  Future<Result<List<CategoryEntity>, CategoryFailure>> call({
    required CategoryQueryFilter filter,
  }) async {
    final businessRule = GetCategoryByFilterUsecaseBusinessRule(
      filter: filter,
    );

    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.getCategoryByFilter(
        filter: filter,
      ),
      failure: (failure) => Result.failure(failure),
    );
  }
}
