import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/category/filter/category_query_filter.dart';
import 'package:baladeston/domain/category/entity/category_entity.dart';
import 'package:baladeston/domain/category/exception/category_entity_exception.dart';
import 'package:baladeston/domain/category/exception/category_filter_exception.dart';
import 'package:baladeston/domain/category/failure/category_failure.dart';
import 'package:baladeston/domain/category/repository/category_repository.dart';
import 'package:baladeston/domain/category/usecase/update_by_filter/update_category_by_filter_usecase_business_rule.dart';


class UpdateCategoryByFilterUseCase {
  final CategoryRepository repository;

  const UpdateCategoryByFilterUseCase({
    required this.repository,
  });

  Future<Result<List<CategoryEntity>, CategoryFailure>> call({
    required CategoryEntity category,
    required CategoryQueryFilter filter,
  }) async {
    try {
      final business = UpdateCategoryByFilterUsecaseBusinessRule(
        category: category,
        filter: filter,
      );
      business.validate();
    } on CategoryEntityException catch (e) {
      return Result.failure(
        ValidationFailure(e.message),
      );
    } on CategoryFilterException catch (e) {
      return Result.failure(
        ValidationFailure(e.message),
      );
    }

    return repository.updateCategoryByFilter(
      category: category,
      filter: filter,
    );
  }
}
