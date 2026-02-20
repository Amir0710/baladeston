import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/report/datasource/remote/report_remote_datasource/report_api.dart';
import 'package:baladeston/data/report/filter/report_query_filter.dart';
import 'package:baladeston/data/report/mapper/report_mapper.dart';
import 'package:baladeston/domain/report/entity/report_entity.dart';
import 'package:baladeston/domain/report/failure/report_failure.dart';
import 'package:baladeston/domain/report/failure/report_failure_mapper.dart';
import 'package:baladeston/domain/report/repository/report_repository.dart';

class ReportRepositoryImplementation implements ReportRepository {
  final ReportApi api;

  const ReportRepositoryImplementation(this.api);

  @override
  Future<Result<List<ReportEntity>, ReportFailure>> getReportByFilter({
    required ReportQueryFilter filter,
  }) async {
    try {
      final result = await api.getReportByFilter(filter: filter);
      return Result.success(
        result.map((e) => e.toEntity()).toList(),
      );
    } catch (error) {
      return Result.failure(mapReportException(error));
    }
  }

  @override
  Future<Result<ReportEntity, ReportFailure>> getReportById({
    required int id,
  }) async {
    try {
      final result = await api.getReportById(id: id);
      return Result.success(result.toEntity());
    } catch (error) {
      return Result.failure(mapReportException(error));
    }
  }

  @override
  Future<Result<ReportEntity, ReportFailure>> createReport({
    required ReportEntity report,
  }) async {
    try {
      final result = await api.createReport(
        report: report.toModel(),
      );
      return Result.success(result.toEntity());
    } catch (error) {
      return Result.failure(mapReportException(error));
    }
  }

  @override
  Future<Result<ReportEntity, ReportFailure>> updateReportById({
    required int id,
    required ReportEntity report,
  }) async {
    try {
      final result = await api.updateReportById(
        id: id,
        report: report.toModel(),
      );
      return Result.success(result.toEntity());
    } catch (error) {
      return Result.failure(mapReportException(error));
    }
  }

  @override
  Future<Result<List<ReportEntity>, ReportFailure>> updateReportByFilter({
    required ReportQueryFilter filter,
    required ReportEntity report,
  }) async {
    try {
      final result = await api.updateReportByFilter(
        filter: filter,
        report: report.toModel(),
      );
      return Result.success(
        result.map((e) => e.toEntity()).toList(),
      );
    } catch (error) {
      return Result.failure(mapReportException(error));
    }
  }

  @override
  Future<Result<int, ReportFailure>> deleteReportById({
    required int id,
  }) async {
    try {
      final result = await api.deleteReportById(id: id);
      return Result.success(result);
    } catch (error) {
      return Result.failure(mapReportException(error));
    }
  }

  @override
  Future<Result<List<int>, ReportFailure>> deleteReportByFilter({
    required ReportQueryFilter filter,
  }) async {
    try {
      final result = await api.deleteReportByFilter(filter: filter);
      return Result.success(result);
    } catch (error) {
      return Result.failure(mapReportException(error));
    }
  }

  @override
  Future<Result<int, ReportFailure>> countAllReport({
    required ReportQueryFilter filter,
  }) async {
    try {
      final result = await api.countAllReport(filter: filter);
      return Result.success(result);
    } catch (error) {
      return Result.failure(mapReportException(error));
    }
  }
}
