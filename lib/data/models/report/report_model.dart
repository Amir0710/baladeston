// data/models/report_model.dart
// data/models/report_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_model.freezed.dart';
part 'report_model.g.dart';

@freezed
abstract class ReportModel with _$ReportModel {
  const factory ReportModel({
    required int id,
    required int userId,
    required int targetId,
    required String response,
    String? reason,
    required DateTime reportedAt,
    required DateTime reportModeledAt,
    DateTime? responseAt,
  }) = _ReportModel;

  factory ReportModel.fromJson(Map<String, dynamic> json) =>
      _$ReportModelFromJson(json);
}

