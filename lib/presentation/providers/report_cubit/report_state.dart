import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:baladeston/domain/entitys/report/report_entity.dart';

part 'report_state.freezed.dart';

@freezed
class ReportState with _$ReportState {
  const factory ReportState.initial() = _Initial;
  const factory ReportState.loading() = _Loading;

  /// when list of reports is successfully loaded
  const factory ReportState.listLoaded({required List<ReportEntity> reports}) = _ListLoaded;

  /// when a single report is loaded/created/updated
  const factory ReportState.singleLoaded({required ReportEntity report}) = _SingleLoaded;

  /// when count operation is successful
  const factory ReportState.countLoaded({required int count}) = _CountLoaded;

  /// when create operation is successful
  const factory ReportState.createSuccess({required ReportEntity report}) = _CreateSuccess;

  /// when update operation is successful  
  const factory ReportState.updateSuccess({required ReportEntity report}) = _UpdateSuccess;

  /// when delete operation is successful
  const factory ReportState.deleteSuccess() = _DeleteSuccess;

  /// any operation failed
  const factory ReportState.failure({required String message}) = _Failure;
}
