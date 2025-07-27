import 'package:baladeston/domain/entitys/category/category_entity.dart';
import 'package:baladeston/domain/repositories/category_repository.dart';

class CreateCategoryUseCase {
  final CategoryRepository repository;

  CreateCategoryUseCase(this.repository);

  Future<void> call(CategoryEntity category) {
    return repository.createCategory(category: category);
  }
}
