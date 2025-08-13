import 'package:baladeston/domain/repositories/discount_repository.dart';

class DeleteDiscountByIdUseCase {
  final DiscountRepository repository;

  DeleteDiscountByIdUseCase(this.repository);

  Future<void> call({required int id}) {
    return repository.deleteDiscountById(
        id : id);
  }
}
