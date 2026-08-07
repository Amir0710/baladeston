import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/category/entity/category_entity/category_entity.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/repository/category/category_repository.dart';
import 'package:baladeston/domain/category/usecase/category/get_by_id/get_category_by_id_usecase_business_rule.dart';

class GetCategoryByIdUseCase {
  final CategoryRepository repository;

  const GetCategoryByIdUseCase({required this.repository});

  Future<Result<CategoryEntity, CategoryFailure>> call({
    required int id,
  }) async {
    final businessRule = GetCategoryByIdUsecaseBusinessRule(id: id);
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.getCategoryById(id: id),
      failure: (failure) => Result.failure(failure),
    );
  }
}
