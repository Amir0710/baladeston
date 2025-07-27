import 'package:baladeston/domain/entitys/discount/discount_entity.dart';
import 'package:baladeston/domain/repositories/discount_repository.dart';

class CreateDiscountUseCase {
  final DiscountRepository repository;

  CreateDiscountUseCase(this.repository);

  Future<void> call(DiscountEntity discount) {
    return repository.createDiscount(discount: discount);
  }
}
