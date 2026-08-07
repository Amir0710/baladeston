import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/report/entity/report_entity.dart';
import 'package:baladeston/data/report/filter/report_query_filter.dart';
import 'package:baladeston/domain/report/exception/report_filter_exception.dart';
import 'package:baladeston/domain/report/failure/report_failure.dart';
import 'package:baladeston/domain/report/repository/report_repository.dart';
import 'get_report_by_filter_usecase_business_rule.dart';

class GetReportByFilterUseCase {
  final ReportRepository repository;

  const GetReportByFilterUseCase(this.repository);

  Future<Result<List<ReportEntity>, ReportFailure>> call({
    required ReportQueryFilter filter,
  }) async {
    try {
      final rule = GetReportByFilterUseCaseBusinessRule(
        filter: filter,
      );
      rule.validate();
    } on ReportFilterException catch (e) {
      return Result.failure(
        ReportValidationFailure(e.message),
      );
    }

    return repository.getReportByFilter(
      filter: filter,
    );
  }
}
