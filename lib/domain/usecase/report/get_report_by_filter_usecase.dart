import 'package:baladeston/domain/entitys/report/report_entity.dart';
import 'package:baladeston/domain/filters/report_query_filter.dart';
import 'package:baladeston/domain/repositories/report_repository.dart';

class GetReportByFilterUseCase {
  final ReportRepository repository;

  GetReportByFilterUseCase( this.repository);
  Future<List<ReportEntity>?> call({required ReportQueryFilter filter}) {
    return repository.getReportByFilter(filter: filter);
  }
}
