import 'package:baladeston/domain/entitys/report/report_entity.dart';
import 'package:baladeston/domain/repositories/report_repository.dart';

class CreateReportUseCase {
  final ReportRepository repository;

  CreateReportUseCase( this.repository);
  Future<ReportEntity> call({required ReportEntity report}) {
    return repository.createReport(report: report);
  }
}
