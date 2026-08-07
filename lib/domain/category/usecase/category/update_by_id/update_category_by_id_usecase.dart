import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/category/entity/category_entity/category_entity.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/repository/category/category_repository.dart';
import 'package:baladeston/domain/category/usecase/category/update_by_id/update_category_by_id_usecase_business_rule.dart';

class UpdateCategoryByIdUseCase {
  final CategoryRepository repository;

  const UpdateCategoryByIdUseCase({
    required this.repository,
  });

  Future<Result<CategoryEntity, CategoryFailure>> call({
    required CategoryEntity category,
    required int id,
  }) async {
    final businessRule = UpdateCategoryByIdUsecaseBusinessRule(
      category: category,
      id: id,
    );

    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.updateCategoryById(
        category: category,
        id: id,
      ),
      failure: (failure) => Result.failure(failure),
    );
  }
}
