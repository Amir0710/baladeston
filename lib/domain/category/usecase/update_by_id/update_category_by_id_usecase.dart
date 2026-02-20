import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/category/filter/category_query_filter.dart';
import 'package:baladeston/domain/category/entity/category_entity.dart';
import 'package:baladeston/domain/category/exception/category_entity_exception.dart';
import 'package:baladeston/domain/category/exception/category_filter_exception.dart';
import 'package:baladeston/domain/category/exception/category_id_exception.dart';
import 'package:baladeston/domain/category/failure/category_failure.dart';
import 'package:baladeston/domain/category/repository/category_repository.dart';
import 'package:baladeston/domain/category/usecase/update_by_filter/update_category_by_filter_usecase_business_rule.dart';
import 'package:baladeston/domain/category/usecase/update_by_id/update_category_by_id_usecase_business_rule.dart';


class UpdateCategoryByIdUseCase {
  final CategoryRepository repository;

  const UpdateCategoryByIdUseCase({
    required this.repository,
  });

  Future<Result<CategoryEntity, CategoryFailure>> call({
    required CategoryEntity category,
    required int id,
  }) async {
    try {
      final business = UpdateCategoryByIdUsecaseBusinessRule(
        category: category,
        id : id,
      );
      business.validate();
    } on CategoryEntityException catch (e) {
      return Result.failure(
        ValidationFailure(e.message),
      );
    } on CategoryIdException catch (e) {
      return Result.failure(
        ValidationFailure(e.message),
      );
    }

    return repository.updateCategoryById(
      category: category ,
          id: id

    );
  }
}
