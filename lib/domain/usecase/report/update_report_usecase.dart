import 'package:baladeston/domain/entitys/report/report_entity.dart';
import 'package:baladeston/domain/repositories/report_repository.dart';

class UpdateReportUseCase {
  final ReportRepository repository;

  UpdateReportUseCase(this.repository); 
  Future<ReportEntity> call({required ReportEntity report}){
    return repository.updateReport(report: report);
  }
}
