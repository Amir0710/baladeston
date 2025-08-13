import 'package:baladeston/domain/filters/report_query_filter.dart';
import 'package:baladeston/domain/repositories/report_repository.dart';

class DeleteReportByFilterUseCase {
  final ReportRepository repository;

  DeleteReportByFilterUseCase( this.repository);
  Future<void> call({required ReportQueryFilter filter}) {
    return repository.deleteReportByFilter(filter: filter);
  }
}
