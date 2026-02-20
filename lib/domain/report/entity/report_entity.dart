
import 'package:baladeston/application/providers/report_cubit/report_state.dart';
import 'package:baladeston/core/enum/report_status.dart';
import 'package:baladeston/core/enum/report_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_entity.freezed.dart';

@freezed
abstract class ReportEntity with _$ReportEntity {
  const factory ReportEntity({
    required int? id,
    required int userId,
    required int targetId,
    String? response,
    required DateTime reportedAt,
    required String? reason,
    required DateTime? responseAt,
    required ReportStatus status ,
    required ReportType type,
  }) = _ReportEntity;
}
