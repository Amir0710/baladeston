import 'package:baladeston/domain/entitys/category/category.dart';
import 'package:baladeston/domain/repositories/category_repository.dart';

class CreateCategoryUseCase {
  final CategoryRepository repository;

  CreateCategoryUseCase(this.repository);

  Future<void> call(Category category) {
    return repository.createCategory(category: category);
  }
}
