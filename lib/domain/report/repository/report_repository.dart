import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/report/entity/report_entity.dart';
import 'package:baladeston/domain/report/failure/report_failure.dart';
import 'package:baladeston/data/report/filter/report_query_filter.dart';

abstract class ReportRepository {

  /// Get reports by filter
  Future<Result<List<ReportEntity>, ReportFailure>> getReportByFilter({
    required ReportQueryFilter filter,
  });

  /// Get single report by id
  Future<Result<ReportEntity, ReportFailure>> getReportById({
    required int id,
  });

  /// Create new report
  Future<Result<ReportEntity, ReportFailure>> createReport({
    required ReportEntity report,
  });

  /// Update report by id
  Future<Result<ReportEntity, ReportFailure>> updateReportById({
    required int id,
    required ReportEntity report,
  });

  /// Update reports by filter
  Future<Result<List<ReportEntity>, ReportFailure>> updateReportByFilter({
    required ReportQueryFilter filter,
    required ReportEntity report,
  });

  /// Delete report by id
  Future<Result<int, ReportFailure>> deleteReportById({
    required int id,
  });

  /// Delete reports by filter
  Future<Result<List<int>, ReportFailure>> deleteReportByFilter({
    required ReportQueryFilter filter,
  });

  /// Count reports by filter
  Future<Result<int, ReportFailure>> countAllReport({
    required ReportQueryFilter filter,
  });
}
