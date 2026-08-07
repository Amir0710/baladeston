import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/failure/domain/validation/category_id_failure.dart';

class DeleteCategoryByIdUsecaseBusinessRule {
  final int id;

  const DeleteCategoryByIdUsecaseBusinessRule({
    required this.id,
  });

  Result<void, CategoryFailure> validate() {
    return _idValidation();
  }

  Result<void, CategoryFailure> _idValidation() {


    if (id <= 0) {
      return const Result.failure(CategoryIdInvalidFailure());
    }

    return const Result.success(null);
  }
}
