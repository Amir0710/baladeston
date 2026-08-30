import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';
import 'package:baladeston/domain/discount/failure/domain/validation/discount_id_failure.dart';

class GetDiscountByIdUsecaseBusinessRule {
  final int id;

  const GetDiscountByIdUsecaseBusinessRule({
    required this.id,
  });

  Result<void, DiscountFailure> validate() {
    if (id <= 0) {
      return const Result.failure(DiscountIdInvalidFailure());
    }
    return const Result.success(null);
  }
}
