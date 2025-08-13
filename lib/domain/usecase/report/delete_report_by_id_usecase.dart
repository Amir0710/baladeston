import 'package:baladeston/domain/repositories/report_repository.dart';

class DeleteReportByIdUseCase {
  final ReportRepository repository;

  DeleteReportByIdUseCase( this.repository);
  Future<void> call({required int id}) {
    return repository.deleteReportById(id: id);
  }
}
