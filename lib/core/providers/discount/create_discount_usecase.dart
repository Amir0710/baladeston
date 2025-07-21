import 'package:baladeston/domain/entitys/discount/discount.dart';
import 'package:baladeston/domain/repositories/discount_repository.dart';

class CreateDiscountUseCase {
  final DiscountRepository repository;

  CreateDiscountUseCase(this.repository);

  Future<void> call(Discount discount) {
    return repository.createDiscount(discount: discount);
  }
}
