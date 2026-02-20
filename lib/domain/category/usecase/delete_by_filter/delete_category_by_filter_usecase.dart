import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/category/filter/category_query_filter.dart';
import 'package:baladeston/domain/category/exception/category_filter_exception.dart';
import 'package:baladeston/domain/category/failure/category_failure.dart';
import 'package:baladeston/domain/category/repository/category_repository.dart';
import 'package:baladeston/domain/category/usecase/delete_by_filter/delete_category_by_filter_usecase_business_rule.dart';

class DeleteCategoryByFilterUseCase {
  final CategoryRepository repository;

  const DeleteCategoryByFilterUseCase({
    required this.repository,
  });

  Future<Result<List<int>, CategoryFailure>> call({
    required CategoryQueryFilter filter,
  }) async {
    try {
      final business = DeleteCategoryByFilterUsecaseBusinessRule(
        filter: filter,
      );
      business.validate();
    } on CategoryFilterException  catch (e) {
      return Result.failure(
        ValidationFailure(e.message),
      );
    }

    return repository.deleteCategoryByFilter(
      filter: filter,
    );
  }
}
