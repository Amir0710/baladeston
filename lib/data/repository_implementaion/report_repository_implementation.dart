import 'package:baladeston/domain/entitys/report/report_entity.dart';
import 'package:baladeston/domain/filters/report_query_filter.dart';
import 'package:baladeston/domain/repositories/report_repository.dart';

class ReportRepositoryImplementation extends ReportRepository {
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
  Future<void> deleteReport({required ReportQueryFilter filter}) {
    // TODO: implement deleteReport
    throw UnimplementedError();
  }

  @override
  Future<List<ReportEntity>> getReport({required ReportQueryFilter filter}) {
    // TODO: implement getReport
    throw UnimplementedError();
  }

  @override
  Future<ReportEntity> updateReport({required ReportQueryFilter filter}) {
    // TODO: implement updateReport
    throw UnimplementedError();
  }
}