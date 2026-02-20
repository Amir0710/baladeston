import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/report/exception/report_id_exception.dart';
import 'package:baladeston/domain/report/failure/report_failure.dart';
import 'package:baladeston/domain/report/repository/report_repository.dart';
import 'delete_report_by_id_usecase_business_rule.dart';

class DeleteReportByIdUseCase {
  final ReportRepository repository;

  const DeleteReportByIdUseCase(this.repository);

  Future<Result<void, ReportFailure>> call({
    required int id,
  }) async {
    try {
      final rule = DeleteReportByIdUseCaseBusinessRule(
        id: id,
      );
      rule.validate();
    } on ReportIdException catch (e) {
      return Result.failure(
        ReportValidationFailure(e.message),
      );
    }

    return repository.deleteReportById(
      id: id,
    );
  }
}
