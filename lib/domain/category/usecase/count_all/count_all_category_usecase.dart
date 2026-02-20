import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/category/filter/category_query_filter.dart';
import 'package:baladeston/domain/category/exception/category_filter_exception.dart';
import 'package:baladeston/domain/category/failure/category_failure.dart';
import 'package:baladeston/domain/category/repository/category_repository.dart';
import 'package:baladeston/domain/category/usecase/count_all/count_all_category_usecase_business_rule.dart';

class CountAllCategoryUseCase {
  final CategoryRepository repository;

  const CountAllCategoryUseCase({
    required this.repository,
  });

  Future<Result<int, CategoryFailure>> call({
    required CategoryQueryFilter filter,
  }) async {
    try {
      final business = CountAllCategoryUsecaseBusinessRule(filter: filter);
      business.validate();
    } on CategoryFilterException catch (e) {
      return Result.failure(
        ValidationFailure(e.message),
      );
    }

    return repository.countAllCategory(
      filter: filter,
    );
  }
}
