import 'package:baladeston/domain/entitys/discount/discount_entity.dart';
import 'package:baladeston/domain/repositories/discount_repository.dart';

class GetDiscountByIdUseCase {
  final DiscountRepository repository;

  GetDiscountByIdUseCase(this.repository);

  Future<DiscountEntity> call(int id) {
    return repository.getDiscountById(id: id);
  }
}
