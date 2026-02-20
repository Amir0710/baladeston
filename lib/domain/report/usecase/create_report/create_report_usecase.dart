import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/report/entity/report_entity.dart';
import 'package:baladeston/domain/report/exception/report_entity_exception.dart';
import 'package:baladeston/domain/report/failure/report_failure.dart';
import 'package:baladeston/domain/report/repository/report_repository.dart';
import 'create_report_usecase_business_rule.dart';

class CreateReportUseCase {
  final ReportRepository repository;

  const CreateReportUseCase(this.repository);

  Future<Result<ReportEntity, ReportFailure>> call({
    required ReportEntity report,
  }) async {
    try {
      final rule = CreateReportUseCaseBusinessRule(
        report: report,
      );
      rule.validate();
    } on ReportEntityException catch (e) {
      return Result.failure(
        ReportValidationFailure(e.message),
      );
    }

    return repository.createReport(
      report: report,
    );
  }
}
