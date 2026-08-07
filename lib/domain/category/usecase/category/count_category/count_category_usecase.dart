import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/category/filter/model/category_query_filter.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/repository/category/category_repository.dart';
import 'package:baladeston/domain/category/usecase/category/count_category/count_category_usecase_business_rule.dart';

class CountCategoryUseCase {
  final CategoryRepository repository;

  const CountCategoryUseCase({
    required this.repository,
  });

  Future<Result<int, CategoryFailure>> call({
    required CategoryQueryFilter filter,
  }) async {
    final businessRule = CountCategoryUsecaseBusinessRule(
      filter: filter,
    );

    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.countCategory(
        filter: filter,
      ),
      failure: (failure) => Result.failure(failure),
    );
  }
}
