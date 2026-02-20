import 'package:baladeston/data/category/filter/category_query_filter.dart';

class DeleteCategoryByFilterUsecaseBusinessRule {
  final CategoryQueryFilter filter;

  DeleteCategoryByFilterUsecaseBusinessRule({required this.filter});

  void validate() {
    /// NEED  // i most add validation with exception
  }
}
