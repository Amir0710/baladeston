import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/report/filter/report_query_filter.dart';
import 'package:baladeston/domain/report/exception/report_filter_exception.dart';
import 'package:baladeston/domain/report/failure/report_failure.dart';
import 'package:baladeston/domain/report/repository/report_repository.dart';
import 'delete_report_by_filter_usecase_business_rule.dart';

class DeleteReportByFilterUseCase {
  final ReportRepository repository;

  const DeleteReportByFilterUseCase(this.repository);

  Future<Result<List<int>, ReportFailure>> call({
    required ReportQueryFilter filter,
  }) async {
    try {
      final rule = DeleteReportByFilterUseCaseBusinessRule(
        filter: filter,
      );
      rule.validate();
    } on ReportFilterException catch (e) {
      return Result.failure(
        ReportValidationFailure(e.message),
      );
    }

    return repository.deleteReportByFilter(
      filter: filter,
    );
  }
}
