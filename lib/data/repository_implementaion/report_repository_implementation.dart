import 'package:baladeston/data/datasources/remote/discount_remote_datasource/discount_api.dart';
import 'package:baladeston/data/datasources/remote/report_remote_datasource/report_api.dart';
import 'package:baladeston/domain/entitys/report/report_entity.dart';
import 'package:baladeston/domain/filters/report_query_filter.dart';
import 'package:baladeston/domain/repositories/report_repository.dart';

class ReportRepositoryImplementation extends ReportRepository {
    final ReportApi _api;

  ReportRepositoryImplementation({required ReportApi api}) : _api = api;
  @override
  Future<int> countAllReport({required ReportQueryFilter filter}) {
    // TODO: implement countAllReport
    throw UnimplementedError();
  }

  @override
  Future<ReportEntity> createReport({required ReportEntity report}) {
    // TODO: implement createReport
    throw UnimplementedError();
  }

  @override
  Future<void> deleteReportByFilter({required ReportQueryFilter filter}) {
    // TODO: implement deleteReportByFilter
    throw UnimplementedError();
  }

  @override
  Future<void> deleteReportById({required int id}) {
    // TODO: implement deleteReportById
    throw UnimplementedError();
  }

  @override
  Future<List<ReportEntity>?> getReportByFilter({required ReportQueryFilter filter}) {
    // TODO: implement getReportByFilter
    throw UnimplementedError();
  }

  @override
  Future<ReportEntity>? getReportById({required int id}) {
    // TODO: implement getReportById
    throw UnimplementedError();
  }

  @override
  Future<ReportEntity> updateReport({required ReportEntity report}) {
    // TODO: implement updateReport
    throw UnimplementedError();
  }


}
