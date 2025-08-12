import 'package:baladeston/domain/entitys/report/report_entity.dart';
import 'package:baladeston/domain/filters/report_query_filter.dart';
import 'package:baladeston/domain/repositories/report_repository.dart';

class GetReportUsecase {
  final ReportRepository repository;

  GetReportUsecase({required this.repository}); 
  Future<List<ReportEntity>> call({required ReportQueryFilter filter }){
    return repository.getReport(filter: filter);
  }
}
