import 'package:bloc/bloc.dart';
import 'report_state.dart';
import 'package:baladeston/domain/report/entity/report_entity.dart';
import 'package:baladeston/data/report/filter/report_query_filter.dart';

import 'package:baladeston/domain/report/usecase/count_all_report_usecase.dart';
import 'package:baladeston/domain/report/usecase/delete_report_by_fliter/delete_report_by_filter_usecase.dart';
import 'package:baladeston/domain/report/usecase/delete_report_by_id/delete_report_by_id_usecase.dart';
import 'package:baladeston/domain/report/usecase/get_report_by_fliter/get_report_by_filter_usecase.dart';
import 'package:baladeston/domain/report/usecase/get_report_by_id/get_report_by_id_usecase.dart';
import 'package:baladeston/domain/report/usecase/create_report/create_report_usecase.dart';
import 'package:baladeston/domain/report/usecase/update_report_usecase.dart';

class ReportCubit extends Cubit<ReportState> {
  final CountAllReportUseCase _countUseCase;
  final GetReportByFilterUseCase _getByFilterUseCase;
  final GetReportByIdUseCase _getByIdUseCase;
  final CreateReportUseCase _createUseCase;
  final UpdateReportUseCase _updateUseCase;
  final DeleteReportByIdUseCase _deleteByIdUseCase;
  final DeleteReportByFilterUseCase _deleteByFilterUseCase;

  ReportCubit({
    required CountAllReportUseCase countUseCase,
    required GetReportByFilterUseCase getByFilterUseCase,
    required GetReportByIdUseCase getByIdUseCase,
    required CreateReportUseCase createUseCase,
    required UpdateReportUseCase updateUseCase,
    required DeleteReportByIdUseCase deleteByIdUseCase,
    required DeleteReportByFilterUseCase deleteByFilterUseCase,
  })  : _countUseCase = countUseCase,
        _getByFilterUseCase = getByFilterUseCase,
        _getByIdUseCase = getByIdUseCase,
        _createUseCase = createUseCase,
        _updateUseCase = updateUseCase,
        _deleteByIdUseCase = deleteByIdUseCase,
        _deleteByFilterUseCase = deleteByFilterUseCase,
        super(const ReportState.initial());

  // --------------------------------------------------------------------
  // لود لیست گزارش‌ها با فیلتر دلخواه
  // --------------------------------------------------------------------
  Future<void> loadReports({required ReportQueryFilter filter}) async {
    emit(const ReportState.fetchingList());

    final listResult = await _getByFilterUseCase(filter: filter);

    await listResult.when(
      success: (reports) async {
        final countResult = await _countUseCase(filter: filter);
        final count = countResult.when(
          success: (value) => value,
          failure: (_) => reports.length,
        );
        emit(ReportState.successListLoaded(reports: reports, count: count));
      },
      failure: (failure) {
        emit(const ReportState.error(
          error: ReportStateError.errorWhileLoadingList,
          message: 'خطا در دریافت لیست گزارش‌ها',
        ));
      },
    );
  }

  // --------------------------------------------------------------------
  // لود یک گزارش خاص
  // --------------------------------------------------------------------
  Future<void> loadReportById({required int id}) async {
    emit(const ReportState.fetchingSingle());

    final result = await _getByIdUseCase(id: id);

    result.when(
      success: (report) {
        emit(ReportState.successSingleLoaded(report: report));
      },
      failure: (_) {
        emit(const ReportState.error(
          error: ReportStateError.errorWhileLoadingSingle,
          message: 'خطا در دریافت گزارش',
        ));
      },
    );
  }

  // --------------------------------------------------------------------
  // ثبت گزارش جدید و رفرش لیست
  // --------------------------------------------------------------------
  Future<void> createReport({
    required ReportEntity report,
    required ReportQueryFilter refreshFilter,
  }) async {
    emit(const ReportState.creating());

    final result = await _createUseCase(report: report);

    bool shouldRefresh = false;

    result.when(
      success: (_) {
        shouldRefresh = true;
        emit(const ReportState.created());
      },
      failure: (_) {
        emit(const ReportState.error(
          error: ReportStateError.errorWhileCreating,
          message: 'خطا در ثبت گزارش',
        ));
      },
    );

    if (shouldRefresh) {
      await loadReports(filter: refreshFilter);
    }
  }

  // --------------------------------------------------------------------
  // ویرایش گزارش و رفرش لیست
  // --------------------------------------------------------------------
  Future<void> updateReport({
    required ReportEntity report,
    required ReportQueryFilter refreshFilter,
  }) async {
    emit(const ReportState.editing());

    final result = await _updateUseCase(report: report);

    bool shouldRefresh = false;

    result.when(
      success: (_) {
        shouldRefresh = true;
      },
      failure: (_) {
        emit(const ReportState.error(
          error: ReportStateError.errorWhileEditing,
          message: 'خطا در ویرایش گزارش',
        ));
      },
    );

    if (shouldRefresh) {
      await loadReports(filter: refreshFilter);
    }
  }

  // --------------------------------------------------------------------
  // حذف گزارش تکی و رفرش لیست
  // --------------------------------------------------------------------
  Future<void> deleteReportById({
    required int id,
    required ReportQueryFilter refreshFilter,
  }) async {
    emit(const ReportState.deletingById());

    final result = await _deleteByIdUseCase(id: id);

    bool shouldRefresh = false;

    result.when(
      success: (_) {
        shouldRefresh = true;
      },
      failure: (_) {
        emit(const ReportState.error(
          error: ReportStateError.errorWhileDeletingById,
          message: 'خطا در حذف گزارش',
        ));
      },
    );

    if (shouldRefresh) {
      await loadReports(filter: refreshFilter);
    }
  }

  // --------------------------------------------------------------------
  // حذف گروهی گزارش‌ها و رفرش لیست
  // --------------------------------------------------------------------
  Future<void> deleteReportsByFilter({
    required ReportQueryFilter filter,
    required ReportQueryFilter refreshFilter,
  }) async {
    emit(const ReportState.deletingByFilter());

    final result = await _deleteByFilterUseCase(filter: filter);

    bool shouldRefresh = false;

    result.when(
      success: (_) {
        shouldRefresh = true;
      },
      failure: (_) {
        emit(const ReportState.error(
          error: ReportStateError.errorWhileDeletingByFilter,
          message: 'خطا در حذف گروهی گزارش‌ها',
        ));
      },
    );

    if (shouldRefresh) {
      await loadReports(filter: refreshFilter);
    }
  }
}
