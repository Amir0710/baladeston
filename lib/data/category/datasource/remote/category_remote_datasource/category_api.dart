import 'package:baladeston/core/model/paginated_response_model.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/category/filter/model/category_query_filter.dart';
import 'package:baladeston/data/category/model/category_model/category_model.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:image_picker/image_picker.dart';

abstract class CategoryApi {
  Future<Result<PaginatedResponseModel<CategoryModel>, CategoryFailure>>
      getCategoryByFilter({
    required CategoryQueryFilter filter,
  });

  Future<Result<CategoryModel, CategoryFailure>> getCategoryById({
    required int id,
  });

  Future<Result<List<CategoryModel>, CategoryFailure>> getAllCategory({
    required CategoryQueryFilter filter,
  });

  Future<Result<int, CategoryFailure>> countAllCategory({
    required CategoryQueryFilter filter,
  });

  Future<Result<CategoryModel, CategoryFailure>> createCategory({
    required CategoryModel category,
  });

  Future<Result<CategoryModel, CategoryFailure>> updateCategoryById({
    required CategoryModel category,
    required int id,
  });

  Future<Result<int, CategoryFailure>> updateCategoryByFilter({
    required CategoryModel category,
    required CategoryQueryFilter filter,
  });

  Future<Result<int, CategoryFailure>> deleteCategoryById({
    required int id,
  });

  Future<Result<int, CategoryFailure>> deleteCategoryByFilter({
    required CategoryQueryFilter filter,
  });

  Future<Result<String, CategoryFailure>> uploadCategoryImage({
    required XFile image,
  });
}
