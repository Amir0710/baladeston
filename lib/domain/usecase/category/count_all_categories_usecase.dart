import 'package:baladeston/domain/filters/category_query_filter.dart';
import 'package:baladeston/domain/repositories/category_repository.dart';

class CountAllCategoriesUseCase {
  final CategoryRepository repository;

  CountAllCategoriesUseCase(this.repository);

  Future<int> call({required CategoryQueryFilter filter}) {
    return repository.countAllCategories(filter: filter);
  }
}
