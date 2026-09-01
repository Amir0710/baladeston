import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';
import 'package:baladeston/domain/discount/failure/domain/validation/discount_id_failure.dart';

class DeleteDiscountByIdUsecaseBusinessRule {
  final int id;

  const DeleteDiscountByIdUsecaseBusinessRule({
    required this.id,
  });

  Result<void, DiscountFailure> validate() {

    return _idValidation() ;
  }

  Result<void, DiscountIdFailure> _idValidation() {
    if (id <= 0) {
      return const Result.failure(DiscountIdInvalidFailure());
    }
    return const Result.success(null);
  }

}
