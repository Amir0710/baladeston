
import 'package:baladeston/data/category/filter/category_query_filter.dart';
import 'package:baladeston/domain/category/entity/category_entity.dart';

class UpdateCategoryByFilterUsecaseBusinessRule {
  final CategoryEntity category;
  final CategoryQueryFilter filter ;

  UpdateCategoryByFilterUsecaseBusinessRule({required this.category, required this.filter});




  void validate() {
    /// NEED  // i most add validation with exception
  }
}
