import 'package:baladeston/data/category/filter/category_query_filter.dart';

class GetAllCategoryUsecaseBusinessRule {
  final CategoryQueryFilter filter;

  GetAllCategoryUsecaseBusinessRule({required this.filter});

  void validate() {
    /// NEED  // i most add validation with exception
  }
}
