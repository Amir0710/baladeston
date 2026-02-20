import 'package:baladeston/data/report/filter/report_query_filter.dart';
import 'package:baladeston/domain/report/entity/report_entity.dart';
import 'package:baladeston/domain/report/exception/report_entity_exception.dart';
import 'package:baladeston/domain/report/exception/report_filter_exception.dart';

class UpdateReportByFilterUseCaseBusinessRule {
  final ReportQueryFilter filter;
  final ReportEntity? report;

  const UpdateReportByFilterUseCaseBusinessRule({
    required this.filter,
    required this.report,
  });

  void validate() {
    _validateFilter();
    _validateEntity();
    _validateState();
  }

  void _validateFilter() {
    // if (filter.isEmpty) {
    //   throw const ReportFilterEmptyException();
    // }

    if (filter.limit != null && filter.limit! <= 0) {
      throw const ReportFilterRangeException();
    }

    if (filter.offset != null && filter.offset! < 0) {
      throw const ReportFilterRangeException();
    }
  }

  void _validateEntity() {
    if (report == null) {
      throw const ReportEntityNullException();
    }

    /// At least one updatable field must be provided
    if (report!.status == null &&
        report!.reason == null) {
      throw const ReportEntityValidationException();
    }
  }

  void _validateState() {
    /// Cannot update reports to closed state in bulk
    if (report!.status == 'closed') {
      throw const ReportEntityInvalidStateException();
    }
  }
}
