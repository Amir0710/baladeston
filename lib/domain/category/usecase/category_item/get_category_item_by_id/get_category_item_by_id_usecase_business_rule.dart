import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/category/failure/domain/validation/category_item_id_failure.dart';

class GetCategoryItemByIdUsecaseBusinessRule {
  const GetCategoryItemByIdUsecaseBusinessRule({required this.id});

  final int id;


  Result<void, CategoryItemIdFailure> validate() {
    return _idValidation();
  }

  Result<void, CategoryItemIdFailure> _idValidation() {
    if (id < 0) {
      return Result.failure(CategoryItemIdInvalidFailure());
    }
    return Result.success(null);
  }
}
