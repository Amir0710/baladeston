import 'package:baladeston/data/report/filter/report_query_filter.dart';
import 'package:baladeston/data/report/model/report_model.dart';

abstract class ReportApi {
  Future<List<ReportModel>> getReportByFilter({
    required ReportQueryFilter filter,
  });

  Future<ReportModel> getReportById({
    required int id,
  });

  Future<ReportModel> createReport({
    required ReportModel report,
  });

  Future<ReportModel> updateReportById({
    required int id,
    required ReportModel report,
  });

  Future<List<ReportModel>> updateReportByFilter({
    required ReportQueryFilter filter,
    required ReportModel report,
  });

  Future<int> deleteReportById({
    required int id,
  });

  Future<List<int>> deleteReportByFilter({
    required ReportQueryFilter filter,
  });

  Future<int> countAllReport({
    required ReportQueryFilter filter,
  });
}
