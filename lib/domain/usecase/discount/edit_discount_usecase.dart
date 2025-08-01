import 'package:baladeston/domain/entitys/discount/discount_entity.dart';
import 'package:baladeston/domain/repositories/discount_repository.dart';

class EditDiscountUseCase {
  final DiscountRepository repository;

  EditDiscountUseCase(this.repository);

  Future<void> call(DiscountEntity discount, int discountId) {
    return repository.editeDiscount(discount: discount, discountId: discountId);
  }
}
