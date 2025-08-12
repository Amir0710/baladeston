import 'package:baladeston/domain/repositories/category_repository.dart';

class DeleteCategoryByIdUseCase {
  final CategoryRepository repository;

  DeleteCategoryByIdUseCase(this.repository);

  Future<void> call(int id) {
    return repository.deleteCategoryById(id: id);
  }
}
