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

import 'package:freezed_annotation/freezed_annotation.dart';

part 'report.freezed.dart';
part 'report.g.dart';

@freezed
class Report with _$Report {
  const factory Report({
    required int id,
    required int userId,
    required int targetId,
    required String response,
    String? reason,
    required DateTime reportedAt,
    DateTime? responseAt,
  }) = _Report;

  factory Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);
}
