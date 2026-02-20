import 'package:baladeston/data/category/filter/category_query_filter.dart';
import 'package:baladeston/domain/category/exception/category_filter_exception.dart';

class   CountAllCategoryUsecaseBusinessRule {
  final CategoryQueryFilter filter;

  CountAllCategoryUsecaseBusinessRule({required this.filter});

  void validate() {
    if (filter.limit == 0) {
      throw FilterLimitException();
    }
    if (filter.offset < 0) {
          throw FilterOffsetException();
    }

    // Validate minCount and maxCount
    if (filter.minCount != null &&
        filter.maxCount != null &&
        filter.minCount! > filter.maxCount!) {
      throw FilterMinMaxException();
    }

    // Validate order
    if (!['name', 'createdAt'].contains(filter.order)) {
      throw FilterOrderException();
    }

  }
}
