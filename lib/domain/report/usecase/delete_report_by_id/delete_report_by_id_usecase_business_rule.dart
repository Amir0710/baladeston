import 'package:baladeston/domain/report/exception/report_id_exception.dart';

class DeleteReportByIdUseCaseBusinessRule {
  final int id;

  const DeleteReportByIdUseCaseBusinessRule({
    required this.id,
  });

  void validate() {
    _validateId();
  }

  void _validateId() {
    if (id <= 0) {
      throw const ReportIdInvalidException();
    }
  }
}
