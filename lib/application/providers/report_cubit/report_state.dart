import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:baladeston/domain/report/entity/report_entity.dart';

part 'report_state.freezed.dart';

enum ReportStateError {
  errorWhileLoadingList,
  errorWhileLoadingSingle,
  errorWhileCreating,
  errorWhileEditing,
  errorWhileDeletingById,
  errorWhileDeletingByFilter,
}

@freezed
class ReportState with _$ReportState {
  const factory ReportState.initial() = _Initial;

  const factory ReportState.fetchingList() = _FetchingList;
  const factory ReportState.fetchingSingle() = _FetchingSingle;
  const factory ReportState.creating() = _Creating;
  const factory ReportState.created() = _Created;
  const factory ReportState.editing() = _Editing;
  const factory ReportState.deletingById() = _DeletingById;
  const factory ReportState.deletingByFilter() = _DeletingByFilter;

  const factory ReportState.successListLoaded({
    required List<ReportEntity> reports,
    required int count,
  }) = _SuccessListLoaded;

  const factory ReportState.successSingleLoaded({
    required ReportEntity report,
  }) = _SuccessSingleLoaded;

  const factory ReportState.error({
    required ReportStateError error,
    required String message,
  }) = _Error;
}
