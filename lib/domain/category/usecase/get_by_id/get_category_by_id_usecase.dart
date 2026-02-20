import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/category/entity/category_entity.dart';
import 'package:baladeston/domain/category/exception/category_id_exception.dart';
import 'package:baladeston/domain/category/failure/category_failure.dart';
import 'package:baladeston/domain/category/repository/category_repository.dart';
import 'package:baladeston/domain/category/usecase/get_by_id/get_category_by_id_usecase_business_rule.dart';

class GetCategoryByIdUseCase {
  final CategoryRepository repository;

  const GetCategoryByIdUseCase({
    required this.repository,
  });

  Future<Result<CategoryEntity, CategoryFailure>> call({
    required int id,
  }) async {
    // 1️⃣ Validation (Business Rule)
    try {
      final business = GetCategoryByIdUsecaseBusinessRule(
        id: id,
      );
      business.validate();
    } on CategoryIdException catch (e) {
      return Result.failure(
        ValidationFailure(e.message),
      );
    }

    // 2️⃣ Repository Execution
    return repository.getCategoryById(
      id: id,
    );
  }
}
