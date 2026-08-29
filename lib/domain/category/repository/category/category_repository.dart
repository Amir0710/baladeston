import 'package:baladeston/core/model/paginated_response_model.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/category/filter/model/category_query_filter.dart';
import 'package:baladeston/domain/category/entity/category_entity/category_entity.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:image_picker/image_picker.dart';

abstract class CategoryRepository {
  Future<Result<PaginatedResponseModel<CategoryEntity>, CategoryFailure>>
      getCategoryByFilter({
    required CategoryQueryFilter filter,
  });

  Future<Result<CategoryEntity, CategoryFailure>> getCategoryById({
    required int id,
  });

  Future<Result<CategoryEntity, CategoryFailure>> createCategory({
    required CategoryEntity category,
  });

  Future<Result<int, CategoryFailure>> updateCategoryByFilter({
    required CategoryEntity category,
    required CategoryQueryFilter filter,
  });

  Future<Result<CategoryEntity, CategoryFailure>> updateCategoryById({
    required CategoryEntity category,
    required int id,
  });

  Future<Result<int, CategoryFailure>> deleteCategoryById({
    required int id,
  });

  Future<Result<int, CategoryFailure>> deleteCategoryByFilter({
    required CategoryQueryFilter filter,
  });

  Future<Result<int, CategoryFailure>> countCategory({
    required CategoryQueryFilter filter,
  });

  Future<Result<String, CategoryFailure>> uploadCategoryImage({
    required XFile image,
  });
}
