import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/report/filter/report_query_filter.dart';
import 'package:baladeston/domain/report/exception/report_filter_exception.dart';
import 'package:baladeston/domain/report/failure/report_failure.dart';
import 'package:baladeston/domain/report/repository/report_repository.dart';
import 'count_report_usecase_business_rule.dart';

class CountReportUseCase {
  final ReportRepository repository;

  const CountReportUseCase(this.repository);

  Future<Result<int, ReportFailure>> call({
    required ReportQueryFilter filter,
  }) async {
    try {
      final rule = CountReportUseCaseBusinessRule(
        filter: filter,
      );
      rule.validate();
    } on ReportFilterException catch (e) {
      return Result.failure(
        ReportValidationFailure(e.message),
      );
    }

    return repository.countAllReport(
      filter: filter,
    );
  }
}
