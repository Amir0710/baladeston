import 'package:baladeston/domain/entitys/report/report_entity.dart';
import 'package:baladeston/domain/filters/report_query_filter.dart';
import 'package:baladeston/domain/repositories/report_repository.dart';

class UpdateReportUsecase {
  final ReportRepository repository;

  UpdateReportUsecase({required this.repository}); 
  Future<ReportEntity> call({required ReportQueryFilter filter }){
    return repository.updateReport(filter: filter);
  }
}
