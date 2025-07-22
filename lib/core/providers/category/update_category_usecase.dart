import 'package:baladeston/domain/entitys/category/category.dart';
import 'package:baladeston/domain/repositories/category_repository.dart';

class UpdateCategoryUseCase {
  final CategoryRepository repository;

  UpdateCategoryUseCase(this.repository);

  Future<void> call(Category category) {
    return repository.updateCategory(category: category);
  }
}
