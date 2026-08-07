import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/category/filter/model/category_query_filter.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/repository/category/category_repository.dart';
import 'package:baladeston/domain/category/usecase/category/delete_by_filter/delete_category_by_filter_usecase_business_rule.dart';


class DeleteCategoryByFilterUseCase {
  final CategoryRepository repository;

  const DeleteCategoryByFilterUseCase({
    required this.repository,
  });

  Future<Result<List<int>, CategoryFailure>> call({
    required CategoryQueryFilter filter,
  }) async {
    final businessRule = DeleteCategoryByFilterUsecaseBusinessRule(
      filter: filter,
    );

    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.deleteCategoryByFilter(
        filter: filter,
      ),
      failure: (failure) => Result.failure(failure),
    );
  }
}
