import 'package:baladeston/domain/entitys/report/report_entity.dart';
import 'package:baladeston/domain/repositories/report_repository.dart';

class GetReportByIdUseCase {
  final ReportRepository repository;

  GetReportByIdUseCase( this.repository);
  Future <ReportEntity?> call({required int id}) {
    return repository.getReportById(id : id);
  }
}
