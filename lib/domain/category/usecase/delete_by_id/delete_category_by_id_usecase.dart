import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/category/exception/category_id_exception.dart';
import 'package:baladeston/domain/category/failure/category_failure.dart';
import 'package:baladeston/domain/category/repository/category_repository.dart';
import 'package:baladeston/domain/category/usecase/delete_by_id/delete_category_by_id_usecase_business_rule.dart';

class DeleteCategoryByIdUseCase {
  final CategoryRepository repository;

  const DeleteCategoryByIdUseCase({
    required this.repository,
  });

  Future<Result<int, CategoryFailure>> call({
    required int id,
  }) async {
    try {
      final business = DeleteCategoryByIdUsecaseBusinessRule(
        id: id,
      );
      business.validate();
    } on CategoryIdException catch (e) {
      return Result.failure(
        ValidationFailure(e.message),
      );
    }

    return repository.deleteCategoryById(
      id: id,
    );
  }
}
