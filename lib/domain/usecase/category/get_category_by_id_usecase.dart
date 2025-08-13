import 'package:baladeston/domain/entitys/category/category_entity.dart';
import 'package:baladeston/domain/repositories/category_repository.dart';

class GetCategoryByIdUseCase {
  final CategoryRepository repository;

  GetCategoryByIdUseCase(this.repository);

  Future<CategoryEntity?> call(int id) {
    return repository.getCategoryById(id: id);
  }
}
