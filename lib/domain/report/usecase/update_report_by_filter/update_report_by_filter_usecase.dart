import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/report/filter/report_query_filter.dart';
import 'package:baladeston/domain/report/entity/report_entity.dart';
import 'package:baladeston/domain/report/exception/report_entity_exception.dart';
import 'package:baladeston/domain/report/exception/report_filter_exception.dart';
import 'package:baladeston/domain/report/failure/report_failure.dart';
import 'package:baladeston/domain/report/repository/report_repository.dart';
import 'update_report_by_filter_usecase_business_rule.dart';

class UpdateReportByFilterUseCase {
  final ReportRepository repository;

  const UpdateReportByFilterUseCase(this.repository);

  Future<Result<List<ReportEntity>, ReportFailure>> call({
    required ReportQueryFilter filter,
    required ReportEntity report,
  }) async {
    try {
      final rule = UpdateReportByFilterUseCaseBusinessRule(
        filter: filter,
        report: report,
      );
      rule.validate();
    } on ReportFilterException catch (e) {
      return Result.failure(
        ReportValidationFailure(e.message),
      );
    } on ReportEntityException catch (e) {
      return Result.failure(
        ReportValidationFailure(e.message),
      );
    }

    return repository.updateReportByFilter(
      filter: filter,
      report: report,
    );
  }
}
