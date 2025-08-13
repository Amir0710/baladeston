import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:baladeston/domain/entitys/report/report_entity.dart';

part 'report_state.freezed.dart';

@freezed
class ReportState with _$ReportState {
  const factory ReportState.initial() = _Initial;
  const factory ReportState.loading() = _Loading;

  /// موفقیت: شامل لیست گزارش‌ها و تعداد کل
  const factory ReportState.success({
    required List<ReportEntity> reports,
    required int count,
  }) = _Success;

  /// شکست: همراه با پیام خطا
  const factory ReportState.failure({
    required String message,
  }) = _Failure;
}
