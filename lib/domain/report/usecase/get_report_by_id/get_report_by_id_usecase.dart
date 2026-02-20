import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/report/entity/report_entity.dart';
import 'package:baladeston/domain/report/exception/report_id_exception.dart';
import 'package:baladeston/domain/report/failure/report_failure.dart';
import 'package:baladeston/domain/report/repository/report_repository.dart';
import 'get_report_by_id_usecase_business_rule.dart';

class GetReportByIdUseCase {
  final ReportRepository repository;

  const GetReportByIdUseCase(this.repository);

  Future<Result<ReportEntity, ReportFailure>> call({
    required int id,
  }) async {
    try {
      final rule = GetReportByIdUseCaseBusinessRule(
        id: id,
      );
      rule.validate();
    } on ReportIdException catch (e) {
      return Result.failure(
        ReportValidationFailure(e.message),
      );
    }

    return repository.getReportById(
      id: id,
    );
  }
}
