import 'package:baladeston/domain/entitys/report/report.dart';
import 'package:json_annotation/json_annotation.dart';

part 'report_model.g.dart';

@JsonSerializable()
class ReportModel {
  final int id;
  final int userId;
  final int targetId;
  final String response;
  final String? reason;
  final DateTime reportedAt;       // زمان گزارش
  final DateTime reportModeledAt;  // زمان ثبت مدل (مثلاً زمان در دیتابیس)
  final DateTime? responseAt;      // زمان پاسخ (nullable)

  const ReportModel({
    required this.id,
    required this.userId,
    required this.targetId,
    required this.response,
    this.reason,
    required this.reportedAt,
    required this.reportModeledAt,
    this.responseAt,
  });

  factory ReportModel.fromJson(Map<String, dynamic> json) =>
      _$ReportModelFromJson(json);

  Map<String, dynamic> toJson() => _$ReportModelToJson(this);

  Report toDomain() => Report(
        id: id,
        userId: userId,
        targetId: targetId,
        response: response,
        reason: reason,
        reportedAt: reportedAt,
        reportModeledAt: reportModeledAt,
        responseAt: responseAt,
      );

  factory ReportModel.fromDomain(Report report) => ReportModel(
        id: report.id,
        userId: report.userId,
        targetId: report.targetId,
        response: report.response,
        reason: report.reason,
        reportedAt: report.reportedAt,
        reportModeledAt: report.reportModeledAt,
        responseAt: report.responseAt,
      );
}
