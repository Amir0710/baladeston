import 'package:baladeston/data/report/filter/report_query_filter.dart';
import 'package:baladeston/domain/report/exception/report_filter_exception.dart';

class DeleteReportByFilterUseCaseBusinessRule {
  final ReportQueryFilter filter;

  const DeleteReportByFilterUseCaseBusinessRule({
    required this.filter,
  });

  void validate() {
    _validateNotNull();
    _validateNotEmpty();
    _validateRange();
  }

  /// --------------------------------------------------
  /// Guards
  /// --------------------------------------------------

  void _validateNotNull() {
    if (filter == null) {
      throw const ReportFilterNullException();
    }
  }

  /// Deleting whole report table is forbidden
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
}
