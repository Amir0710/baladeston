import 'package:baladeston/domain/filters/report_query_filter.dart';
import 'package:baladeston/domain/repositories/report_repository.dart';

class DeleteReportUsecase {
  final ReportRepository repository;

  DeleteReportUsecase({required this.repository});
  Future<void> call({required ReportQueryFilter filter}) {
    return repository.deleteReport(filter: filter);
  }
}
