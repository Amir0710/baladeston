import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/category/entity/category_entity.dart';
import 'package:baladeston/domain/category/exception/category_entity_exception.dart';
import 'package:baladeston/domain/category/failure/category_failure.dart';
import 'package:baladeston/domain/category/repository/category_repository.dart';
import 'package:baladeston/domain/category/usecase/create_category/create_category_usecase_business_rule.dart';

class CreateCategoryUseCase {
  final CategoryRepository repository;

  const CreateCategoryUseCase({
    required this.repository,
  });

  Future<Result<CategoryEntity, CategoryFailure>> call({
    required CategoryEntity category,
  }) async {
    try {
      final business = CreateCategoryUsecaseBusinessRule(
        category: category,
      );
      business.validate();
    } on CategoryEntityException catch (e) {
      return Result.failure(
        ValidationFailure(e.message),
      );
    }

    return repository.createCategory(
      category: category,
    );
  }
}
