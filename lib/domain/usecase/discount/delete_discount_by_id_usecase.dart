import 'package:baladeston/domain/repositories/discount_repository.dart';

class DeleteDiscountByIdUsecase {
  final DiscountRepository repository;

  DeleteDiscountByIdUsecase(this.repository);

  Future<void> call({required int id}) {
    return repository.deleteDiscountById(
        id : id);
  }
}
