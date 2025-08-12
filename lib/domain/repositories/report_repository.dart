import 'package:baladeston/domain/entitys/report/report_entity.dart';
import 'package:baladeston/domain/filters/report_query_filter.dart';

abstract class ReportRepository {
    Future<List<ReportEntity>> getReport(
      {required ReportQueryFilter filter});

  Future<ReportEntity> createReport( 
      {required ReportEntity report});

  Future<ReportEntity> updateReport(
      {required ReportQueryFilter filter});

  Future<void> deleteReport({required ReportQueryFilter filter});

  Future<int> countAllReport({required ReportQueryFilter filter});
}