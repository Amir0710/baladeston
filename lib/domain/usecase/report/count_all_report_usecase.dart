import 'package:baladeston/domain/filters/report_query_filter.dart';
import 'package:baladeston/domain/repositories/report_repository.dart';

class CountAllReportUseCase {
  final ReportRepository repository;

  CountAllReportUseCase( this.repository);
  Future<int> call({required ReportQueryFilter filter}) {
    return repository.countAllReport(filter: filter)  ;
  }
}

