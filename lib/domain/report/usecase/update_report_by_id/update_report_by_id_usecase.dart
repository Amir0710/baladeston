import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/report/entity/report_entity.dart';
import 'package:baladeston/domain/report/exception/report_entity_exception.dart';
import 'package:baladeston/domain/report/exception/report_id_exception.dart';
import 'package:baladeston/domain/report/failure/report_failure.dart';
import 'package:baladeston/domain/report/repository/report_repository.dart';
import 'update_report_by_id_usecase_business_rule.dart';

class UpdateReportByIdUseCase {
  final ReportRepository repository;

  const UpdateReportByIdUseCase(this.repository);

  Future<Result<ReportEntity, ReportFailure>> call({
    required int id,
    required ReportEntity report,
  }) async {
    try {
      final rule = UpdateReportByIdUseCaseBusinessRule(
        id: id,
        report: report,
      );
      rule.validate();
    } on ReportIdException catch (e) {
      return Result.failure(
        ReportValidationFailure(e.message),
      );
    } on ReportEntityException catch (e) {
      return Result.failure(
        ReportValidationFailure(e.message),
      );
    }

    return repository.updateReportById(
      id: id,
      report: report,
    );
  }
}
