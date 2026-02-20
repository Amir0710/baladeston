import 'package:baladeston/domain/report/exception/report_id_exception.dart';

class GetReportByIdUseCaseBusinessRule {
  final int id;

  const GetReportByIdUseCaseBusinessRule({
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
