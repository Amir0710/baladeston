// class Report {
//   final int id;
//   final int userId;
//   final int targetId;
//   final String response;
//   final String? reason;
//   final DateTime reportedAt;
//   final DateTime? responseAt;

//   const Report({
//     required this.id,
//     required this.userId,
//     required this.targetId,
//     required this.response,
//     this.reason,
//     required this.reportedAt,
//     this.responseAt,
//   });
// }
// domain/entities/report_entity.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_entity.freezed.dart';

@freezed
abstract class ReportEntity with _$ReportEntity {
  const factory ReportEntity({
    required int id,
    required int userId,
    required int targetId,
    required String response,
    String? reason,
    required DateTime reportedAt,
    required DateTime reportModeledAt,
    DateTime? responseAt,
  }) = _ReportEntity;
}
