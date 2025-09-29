
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
  }) = _ReportEntity;
}
