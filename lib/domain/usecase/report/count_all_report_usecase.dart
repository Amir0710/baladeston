import 'package:baladeston/domain/filters/report_query_filter.dart';
import 'package:baladeston/domain/repositories/report_repository.dart';

class CountAllReportUsecase {
  final ReportRepository repository;

  CountAllReportUsecase({required this.repository});
  Future<int> call({required ReportQueryFilter filter}) {
    return repository.countAllReport(filter: filter)  ;
  }
}

