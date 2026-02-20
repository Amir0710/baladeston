import 'package:baladeston/config/app_config.dart';
import 'package:baladeston/data/report/datasource/remote/report_remote_datasource/report_api.dart';
import 'package:baladeston/data/report/filter/report_query_filter.dart';
import 'package:baladeston/data/report/model/report_model.dart';

class ReportApiImplementation implements ReportApi {
  final String _baseUrl = AppConfig.apiBaseUrl;

  @override
  Future<List<ReportModel>> getReportByFilter({
    required ReportQueryFilter filter,
  }) {
    // GET $_baseUrl/reports
    throw UnimplementedError();
  }

  @override
  Future<ReportModel> getReportById({
    required int id,
  }) {
    // GET $_baseUrl/reports/$id
    throw UnimplementedError();
  }

  @override
  Future<ReportModel> createReport({
    required ReportModel report,
  }) {
    // POST $_baseUrl/reports
    throw UnimplementedError();
  }

  @override
  Future<ReportModel> updateReportById({
    required int id,
    required ReportModel report,
  }) {
    // PUT $_baseUrl/reports/$id
    throw UnimplementedError();
  }

  @override
  Future<List<ReportModel>> updateReportByFilter({
    required ReportQueryFilter filter,
    required ReportModel report,
  }) {
    // PUT $_baseUrl/reports
    throw UnimplementedError();
  }

  @override
  Future<int> deleteReportById({
    required int id,
  }) {
    // DELETE $_baseUrl/reports/$id
    throw UnimplementedError();
  }

  @override
  Future<List<int>> deleteReportByFilter({
    required ReportQueryFilter filter,
  }) {
    // DELETE $_baseUrl/reports
    throw UnimplementedError();
  }

  @override
  Future<int> countAllReport({
    required ReportQueryFilter filter,
  }) {
    // GET $_baseUrl/reports/count
    throw UnimplementedError();
  }
}
