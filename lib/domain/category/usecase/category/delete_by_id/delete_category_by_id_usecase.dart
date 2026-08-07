import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/repository/category/category_repository.dart';
import 'package:baladeston/domain/category/usecase/category/delete_by_id/delete_category_by_id_usecase_business_rule.dart';

class DeleteCategoryByIdUseCase {
  final CategoryRepository repository;

  const DeleteCategoryByIdUseCase({
    required this.repository,
  });

  Future<Result<int, CategoryFailure>> call({
    required int id,
  }) async {
    final businessRule = DeleteCategoryByIdUsecaseBusinessRule(
      id: id,
    );

    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.deleteCategoryById(
        id: id,
      ),
      failure: (failure) => Result.failure(failure),
    );
  }
}
