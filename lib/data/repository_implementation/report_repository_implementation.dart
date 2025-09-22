import 'package:baladeston/data/datasources/remote/report_remote_datasource/report_api.dart';
import 'package:baladeston/data/mapper/report_mapper.dart';
import 'package:baladeston/domain/entitys/report/report_entity.dart';
import 'package:baladeston/domain/filters/report_query_filter.dart';
import 'package:baladeston/domain/repositories/report_repository.dart';

class ReportRepositoryImplementation extends ReportRepository {
  final ReportApi _api;

  ReportRepositoryImplementation({required ReportApi api}) : _api = api;
  @override
  Future<int> countAllReport({required ReportQueryFilter filter}) async {
    try {
      return await _api.countAllReport(filter: filter);
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<ReportEntity> createReport({required ReportEntity report}) async {
    try {
      final model = report.toModel();
      final resultModel = await _api.createReport(report: model);
      return resultModel.toEntity();
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<void> deleteReportByFilter({required ReportQueryFilter filter}) async {
    try {
      await _api.deleteReportByFilter(filter: filter);
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<void> deleteReportById({required int id}) async {
    try {
      await _api.deleteReportById(id: id);
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<List<ReportEntity>?> getReportByFilter(
      {required ReportQueryFilter filter}) async {
    try {
      final resultModel = await _api.getReportByFilter(filter: filter);
      return resultModel?.map((m) => m.toEntity()).toList();
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<ReportEntity?> getReportById({required int id}) async {
    try {
      final resultModel = await _api.getReportById(id: id);
      return resultModel?.toEntity();
    } catch (e) {
      throw Exception('error $e'); 
    }
  }

  @override
  Future<ReportEntity> updateReport({required ReportEntity report}) async {
        try {
          final model = report.toModel() ; 
      final resultModel = await _api.updateReport(report: model);
      return resultModel.toEntity();
    } catch (e) {
      throw Exception('error $e'); 
    }
  }
}
