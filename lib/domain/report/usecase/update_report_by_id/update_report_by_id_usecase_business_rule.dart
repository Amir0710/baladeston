import 'package:baladeston/domain/report/entity/report_entity.dart';
import 'package:baladeston/domain/report/exception/report_entity_exception.dart';
import 'package:baladeston/domain/report/exception/report_id_exception.dart';

class UpdateReportByIdUseCaseBusinessRule {
  final int id;
  final ReportEntity? report;

  const UpdateReportByIdUseCaseBusinessRule({
    required this.id,
    required this.report,
  });

  void validate() {
    _validateId();
    _validateEntity();
    _validateState();
  }

  void _validateId() {
    if (id <= 0) {
      throw const ReportIdInvalidException();
    }
  }

  void _validateEntity() {
    if (report == null) {
      throw const ReportEntityNullException();
    }

    if (report!.userId == null || report!.type == null) {
      throw const ReportRequiredFieldException();
    }
  }

  void _validateState() {
    /// Closed report cannot be updated
    if (report!.status == 'closed') {
      throw const ReportEntityInvalidStateException();
    }
  }
}
