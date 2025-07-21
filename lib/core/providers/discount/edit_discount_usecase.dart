import 'package:baladeston/domain/entitys/discount/discount.dart';
import 'package:baladeston/domain/repositories/discount_repository.dart';

class EditDiscountUseCase {
  final DiscountRepository repository;

  EditDiscountUseCase(this.repository);

  Future<void> call(Discount discount, int discountId) {
    return repository.editeDiscount(discount: discount, discountId: discountId);
  }
}
