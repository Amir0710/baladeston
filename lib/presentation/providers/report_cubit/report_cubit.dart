import 'package:bloc/bloc.dart';
import 'package:baladeston/domain/entitys/report/report_entity.dart';
import 'package:baladeston/domain/filters/report_query_filter.dart';
import 'package:baladeston/domain/usecase/report/count_all_report_usecase.dart';
import 'package:baladeston/domain/usecase/report/create_report_usecase.dart';
import 'package:baladeston/domain/usecase/report/get_report_by_filter_usecase.dart';
import 'package:baladeston/domain/usecase/report/get_report_by_id_usecase.dart';
import 'package:baladeston/domain/usecase/report/update_report_usecase.dart';
import 'package:baladeston/domain/usecase/report/delete_report_by_id_usecase.dart';
import 'package:baladeston/domain/usecase/report/delete_report_by_filter_usecase.dart';
import 'report_state.dart';

class ReportCubit extends Cubit<ReportState> {
  final CountAllReportUseCase _countUseCase;
  final GetReportByFilterUseCase _getByFilterUseCase;
  final GetReportByIdUseCase _getByIdUseCase;
  final CreateReportUseCase _createUseCase;
  final UpdateReportUseCase _updateUseCase;
  final DeleteReportByIdUseCase _deleteByIdUseCase;
  final DeleteReportByFilterUseCase _deleteByFilterUseCase;

  ReportQueryFilter? _lastFilter;

  ReportCubit({
    required CountAllReportUseCase countUseCase,
    required GetReportByFilterUseCase getByFilterUseCase,
    required GetReportByIdUseCase getByIdUseCase,
    required CreateReportUseCase createUseCase,
    required UpdateReportUseCase updateUseCase,
    required DeleteReportByIdUseCase deleteByIdUseCase,
    required DeleteReportByFilterUseCase deleteByFilterUseCase,
  }) : _countUseCase = countUseCase,
       _getByFilterUseCase = getByFilterUseCase,
       _getByIdUseCase = getByIdUseCase,
       _createUseCase = createUseCase,
       _updateUseCase = updateUseCase,
       _deleteByIdUseCase = deleteByIdUseCase,
       _deleteByFilterUseCase = deleteByFilterUseCase,
       super(const ReportState.initial());

  /// لیست گزارش‌ها با فیلتر دلخواه (پشتیبانی کامل pagination و جستجو)
  Future<void> loadReports([ReportQueryFilter? filter]) async {
    emit(const ReportState.loading());
    try {
      final f = filter ?? ReportQueryFilter();
      _lastFilter = f;
      final reports = await _getByFilterUseCase(filter: f);
      final count = await _countUseCase(filter: f);
      emit(ReportState.success(reports: reports ?? [], count: count));
    } catch (e) {
      emit(ReportState.failure(message: e.toString()));
    }
  }

  /// رفرش لیست با آخرین فیلتر ثبت‌شده
  Future<void> refreshFilter() async {
    await loadReports(_lastFilter);
  }

  /// لود یک گزارش خاص بر اساس شناسه
  Future<void> loadReportById(int id) async {
    emit(const ReportState.loading());
    try {
      final report = await _getByIdUseCase(id: id);
      emit(ReportState.success(reports: report != null ? [report] : [], count: report != null ? 1 : 0));
    } catch (e) {
      emit(ReportState.failure(message: e.toString()));
    }
  }

  /// ثبت گزارش جدید (و رفرش لیست با آخرین فیلتر)
  Future<void> createReport(ReportEntity report) async {
    emit(const ReportState.loading());
    try {
      await _createUseCase(report: report);
      await refreshFilter();
    } catch (e) {
      emit(ReportState.failure(message: e.toString()));
    }
  }

  /// ویرایش گزارش (و رفرش لیست با آخرین فیلتر)
  Future<void> updateReport(ReportEntity report) async {
    emit(const ReportState.loading());
    try {
      await _updateUseCase(report: report);
      await refreshFilter();
    } catch (e) {
      emit(ReportState.failure(message: e.toString()));
    }
  }

  /// حذف گزارش بر اساس شناسه (و رفرش لیست با آخرین فیلتر)
  Future<void> deleteReportById(int id) async {
    emit(const ReportState.loading());
    try {
      await _deleteByIdUseCase(id: id);
      await refreshFilter();
    } catch (e) {
      emit(ReportState.failure(message: e.toString()));
    }
  }

  /// حذف گزارش‌ها بر اساس فیلتر (و رفرش لیست با آخرین فیلتر)
  Future<void> deleteReportsByFilter(ReportQueryFilter filter) async {
    emit(const ReportState.loading());
    try {
      await _deleteByFilterUseCase(filter: filter);
      await refreshFilter();
    } catch (e) {
      emit(ReportState.failure(message: e.toString()));
    }
  }
}
