import 'package:baladeston/data/report/filter/report_query_filter.dart';
import 'package:baladeston/domain/report/exception/report_filter_exception.dart';

class GetReportByFilterUseCaseBusinessRule {
  final ReportQueryFilter filter;

  const GetReportByFilterUseCaseBusinessRule({
    required this.filter,
  });

  void validate() {
    _validateNotNull();
    _validateNotEmpty();
    _validateRange();
    _validateOrder();
  }

  void _validateNotNull() {
    if (filter == null) {
      throw const ReportFilterNullException();
    }
  }

  void _validateNotEmpty() {
    // if (filter.isEmpty) {
    //   throw const ReportFilterEmptyException();
    // }
  }

  void _validateRange() {
    if (filter.limit != null && filter.limit! <= 0) {
      throw const ReportFilterRangeException();
    }

    if (filter.offset != null && filter.offset! < 0) {
      throw const ReportFilterRangeException();
    }
  }

  void _validateOrder() {
    if (filter.orderBy != null &&
        filter.orderBy != 'createdAt') {
      throw const ReportFilterValidationException();
    }
  }
}
