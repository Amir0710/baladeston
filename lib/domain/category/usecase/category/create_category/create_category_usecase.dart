import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/category/entity/category_entity/category_entity.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/repository/category/category_repository.dart';

import 'package:baladeston/domain/category/usecase/category/create_category/create_category_usecase_business_rule.dart';

class CreateCategoryUseCase {
  final CategoryRepository repository;

  const CreateCategoryUseCase({
    required this.repository,
  });

  Future<Result<CategoryEntity, CategoryFailure>> call({
    required CategoryEntity category,
  }) async {
    final businessRule = CreateCategoryUsecaseBusinessRule(
      category: category,
    );

    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.createCategory(
        category: category,
      ),
      failure: (failure) => Result.failure( failure),
    );
  }
}
