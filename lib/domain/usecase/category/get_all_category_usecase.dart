import 'package:baladeston/domain/filters/category_query_filter.dart';
import 'package:baladeston/domain/entitys/category/category_entity.dart';
import 'package:baladeston/domain/repositories/category_repository.dart';

class GetAllCategoryUsecase {
  final CategoryRepository repository;

  GetAllCategoryUsecase( this.repository);

  Future<List<CategoryEntity>?> call(CategoryQueryFilter filter) {
    return repository.getAllCategory(filter: filter);
  }
}
