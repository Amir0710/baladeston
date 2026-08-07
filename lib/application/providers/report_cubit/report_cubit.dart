import 'package:baladeston/domain/report/usecase/count_report/count_report_usecase.dart';
import 'package:bloc/bloc.dart';

import 'report_state.dart';
import 'package:baladeston/domain/report/entity/report_entity.dart';
import 'package:baladeston/data/report/filter/report_query_filter.dart';

// UseCases
import 'package:baladeston/domain/report/usecase/get_report_by_filter/get_report_by_filter_usecase.dart';
import 'package:baladeston/domain/report/usecase/get_report_by_id/get_report_by_id_usecase.dart';
import 'package:baladeston/domain/report/usecase/create_report/create_report_usecase.dart';
import 'package:baladeston/domain/report/usecase/update_report_by_id/update_report_by_id_usecase.dart';
import 'package:baladeston/domain/report/usecase/update_report_by_filter/update_report_by_filter_usecase.dart';
import 'package:baladeston/domain/report/usecase/delete_report_by_id/delete_report_by_id_usecase.dart';
import 'package:baladeston/domain/report/usecase/delete_report_by_filter/delete_report_by_filter_usecase.dart';

class ReportCubit extends Cubit<ReportState> {
  final CountReportUseCase _countUseCase;
  final GetReportByFilterUseCase _getByFilterUseCase;
  final GetReportByIdUseCase _getByIdUseCase;
  final CreateReportUseCase _createUseCase;
  final UpdateReportByIdUseCase _updateByIdUseCase;
  final UpdateReportByFilterUseCase _updateByFilterUseCase;
  final DeleteReportByIdUseCase _deleteByIdUseCase;
  final DeleteReportByFilterUseCase _deleteByFilterUseCase;

  ReportCubit({
    required CountReportUseCase countUseCase,
    required GetReportByFilterUseCase getByFilterUseCase,
    required GetReportByIdUseCase getByIdUseCase,
    required CreateReportUseCase createUseCase,
    required UpdateReportByIdUseCase updateByIdUseCase,
    required UpdateReportByFilterUseCase updateByFilterUseCase,
    required DeleteReportByIdUseCase deleteByIdUseCase,
    required DeleteReportByFilterUseCase deleteByFilterUseCase,
  })  : _countUseCase = countUseCase,
        _getByFilterUseCase = getByFilterUseCase,
        _getByIdUseCase = getByIdUseCase,
        _createUseCase = createUseCase,
        _updateByIdUseCase = updateByIdUseCase,
        _updateByFilterUseCase = updateByFilterUseCase,
        _deleteByIdUseCase = deleteByIdUseCase,
        _deleteByFilterUseCase = deleteByFilterUseCase,
        super(const ReportState.initial());

  /* -------------------------------------------------------------------------- */
  /*                                   List                                     */
  /* -------------------------------------------------------------------------- */

  Future<void> loadReports({required ReportQueryFilter filter}) async {
    emit(const ReportState.fetchingList());

    final listResult = await _getByFilterUseCase(filter: filter);

    listResult.when(
      success: (reports) async {
        int count = reports.length;

        final countResult = await _countUseCase(filter: filter);
        countResult.when(
          success: (value) => count = value,
          failure: (_) {},
        );

        emit(
          ReportState.successListLoaded(
            reports: reports,
            count: count,
          ),
        );
      },
      failure: (_) => emit(
        const ReportState.error(
          error: ReportStateError.errorWhileLoadingList,
          message: 'خطا در دریافت لیست گزارش‌ها',
        ),
      ),
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                                  Single                                    */
  /* -------------------------------------------------------------------------- */

  Future<void> loadReportById({required int id}) async {
    emit(const ReportState.fetchingSingle());

    final result = await _getByIdUseCase(id: id);

    result.when(
      success: (report) =>
          emit(ReportState.successSingleLoaded(report: report)),
      failure: (_) => emit(
        const ReportState.error(
          error: ReportStateError.errorWhileLoadingSingle,
          message: 'خطا در دریافت گزارش',
        ),
      ),
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                                  Create                                    */
  /* -------------------------------------------------------------------------- */

  Future<void> createReport({
    required ReportEntity report,
    required ReportQueryFilter refreshFilter,
  }) async {
    emit(const ReportState.creating());

    final result = await _createUseCase(report: report);

    result.when(
      success: (_) => loadReports(filter: refreshFilter),
      failure: (_) => emit(
        const ReportState.error(
          error: ReportStateError.errorWhileCreating,
          message: 'خطا در ثبت گزارش',
        ),
      ),
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                              Update by Id                                  */
  /* -------------------------------------------------------------------------- */

  Future<void> updateReportById({
    required int id,
    required ReportEntity report,
    required ReportQueryFilter refreshFilter,
  }) async {
    emit(const ReportState.editing());

    final result = await _updateByIdUseCase(
      id: id,
      report: report,
    );

    result.when(
      success: (_) => loadReports(filter: refreshFilter),
      failure: (_) => emit(
        const ReportState.error(
          error: ReportStateError.errorWhileEditing,
          message: 'خطا در ویرایش گزارش',
        ),
      ),
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                           Update by Filter                                  */
  /* -------------------------------------------------------------------------- */

  Future<void> updateReportsByFilter({
    required ReportQueryFilter filter,
    required ReportEntity report,
    required ReportQueryFilter refreshFilter,
  }) async {
    emit(const ReportState.editing());

    final result = await _updateByFilterUseCase(
      filter: filter,
      report: report,
    );

    result.when(
      success: (_) => loadReports(filter: refreshFilter),
      failure: (_) => emit(
        const ReportState.error(
          error: ReportStateError.errorWhileEditing,
          message: 'خطا در ویرایش گروهی گزارش‌ها',
        ),
      ),
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                                   Delete                                   */
  /* -------------------------------------------------------------------------- */

  Future<void> deleteReportById({
    required int id,
    required ReportQueryFilter refreshFilter,
  }) async {
    emit(const ReportState.deletingById());

    final result = await _deleteByIdUseCase(id: id);

    result.when(
      success: (_) => loadReports(filter: refreshFilter),
      failure: (_) => emit(
        const ReportState.error(
          error: ReportStateError.errorWhileDeletingById,
          message: 'خطا در حذف گزارش',
        ),
      ),
    );
  }

  Future<void> deleteReportsByFilter({
    required ReportQueryFilter filter,
    required ReportQueryFilter refreshFilter,
  }) async {
    emit(const ReportState.deletingByFilter());

    final result = await _deleteByFilterUseCase(filter: filter);

    result.when(
      success: (_) => loadReports(filter: refreshFilter),
      failure: (_) => emit(
        const ReportState.error(
          error: ReportStateError.errorWhileDeletingByFilter,
          message: 'خطا در حذف گروهی گزارش‌ها',
        ),
      ),
    );
  }
}
