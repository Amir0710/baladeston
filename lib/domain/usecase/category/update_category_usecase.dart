import 'package:baladeston/domain/entitys/category/category_entity.dart';
import 'package:baladeston/domain/repositories/category_repository.dart';

class UpdateCategoryUseCase {
  final CategoryRepository repository;

  UpdateCategoryUseCase(this.repository);

  Future<void> call(CategoryEntity category) {
    return repository.updateCategory(category: category);
  }
}
