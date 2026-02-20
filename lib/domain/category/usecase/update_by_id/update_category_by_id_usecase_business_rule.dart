
import 'package:baladeston/data/category/filter/category_query_filter.dart';
import 'package:baladeston/domain/category/entity/category_entity.dart';

class UpdateCategoryByIdUsecaseBusinessRule {
  final CategoryEntity category;
  final int id ;

  UpdateCategoryByIdUsecaseBusinessRule({required this.category, required this.id});




  void validate() {
    /// NEED  // i most add validation with exception
  }
}
