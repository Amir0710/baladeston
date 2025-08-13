import 'package:baladeston/domain/entitys/report/report_entity.dart';
import 'package:baladeston/domain/filters/report_query_filter.dart';

abstract class ReportRepository {
  Future<List<ReportEntity>?> getReportByFilter(
      {required ReportQueryFilter filter});
  Future<ReportEntity>? getReportById({required int id});
  Future<ReportEntity> createReport({required ReportEntity report});
  Future<ReportEntity> updateReport({required ReportEntity report});
  Future<void> deleteReportByFilter({required ReportQueryFilter filter});
  Future<void> deleteReportById({required int id});
  Future<int> countAllReport({required ReportQueryFilter filter});
}
