import 'package:baladeston/data/models/report/report_model.dart';
import 'package:baladeston/domain/filters/report_query_filter.dart';

abstract class ReportApi {
  Future<List<ReportModel>?> getReportByFilter(
      {required ReportQueryFilter filter});
  Future<ReportModel?> getReportById({required int id});
  Future<ReportModel> createReport({required ReportModel report});
  Future<ReportModel> updateReport({required ReportModel report});
  Future<void> deleteReportByFilter({required ReportQueryFilter filter});
  Future<void> deleteReportById({required int id});
  Future<int> countAllReport({required ReportQueryFilter filter});
}
