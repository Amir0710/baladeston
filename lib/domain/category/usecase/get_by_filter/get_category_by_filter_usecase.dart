import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/category/filter/category_query_filter.dart';
import 'package:baladeston/domain/category/entity/category_entity.dart';
import 'package:baladeston/domain/category/exception/category_filter_exception.dart';
import 'package:baladeston/domain/category/failure/category_failure.dart';
import 'package:baladeston/domain/category/repository/category_repository.dart';

import 'get_category_by_filter_usecase_business_rule.dart';


class GetCategoryByFilterUseCase {
  final CategoryRepository repository;

  const GetCategoryByFilterUseCase({
    required this.repository,
  });

  Future<Result<List<CategoryEntity>, CategoryFailure>> call({
    required CategoryQueryFilter filter,
  }) async {
    try {
      final business = GetCategoryByFilterUsecaseBusinessRule(
        filter: filter,
      );
      business.validate();
    } on CategoryFilterException catch (e) {
      return Result.failure(
        ValidationFailure(e.message),
      );
    }

    return repository.getAllCategory(
      filter: filter,
    );
  }
}
