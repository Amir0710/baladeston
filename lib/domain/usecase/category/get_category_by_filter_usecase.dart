import 'package:baladeston/domain/filters/category_query_filter.dart';
import 'package:baladeston/domain/entitys/category/category_entity.dart';
import 'package:baladeston/domain/repositories/category_repository.dart';

class GetCategoryByFilterUseCase {
  final CategoryRepository repository;

  GetCategoryByFilterUseCase(this.repository);

  Future<List<CategoryEntity>?> call(CategoryQueryFilter filter) {
    return repository.getCategoryByFilter(filter: filter);
  }
}
