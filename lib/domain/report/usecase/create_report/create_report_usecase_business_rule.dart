import 'package:baladeston/core/enum/report/report_status.dart';
import 'package:baladeston/domain/report/entity/report_entity.dart';
import 'package:baladeston/domain/report/exception/report_entity_exception.dart';

class CreateReportUseCaseBusinessRule {
  final ReportEntity report;

  const CreateReportUseCaseBusinessRule({
    required this.report,
  });

  void validate() {
    _validateEntity();
    _validateRequiredFields();
    _validateInitialState();
  }



  void _validateEntity() {
    if (report == null) {
      throw const ReportEntityNullException();
    }
  }

  void _validateRequiredFields() {
    if (report.userId <= 0 || report.type == null) {
      throw const ReportRequiredFieldException();
    }
  }

  void _validateInitialState() {
    if (report.status == ReportStatus.closed) {
      throw const ReportEntityInvalidStateException();
    }
  }
}
