import 'package:baladeston/domain/filters/category_query_filter.dart';
import 'package:baladeston/domain/repositories/category_repository.dart';

class DeleteCategoryByFilterUseCase {
  final CategoryRepository repository;

  DeleteCategoryByFilterUseCase(this.repository);

  Future<void> call(CategoryQueryFilter filter) {
    return repository.deleteCategoryByFilter(filter: filter);
  }
}
