// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReportModel _$ReportModelFromJson(Map<String, dynamic> json) => _ReportModel(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['userId'] as num).toInt(),
      targetId: (json['targetId'] as num).toInt(),
      response: json['response'] as String,
      reason: json['reason'] as String?,
      reportedAt: DateTime.parse(json['reportedAt'] as String),
      responseAt: json['responseAt'] == null
          ? null
          : DateTime.parse(json['responseAt'] as String),
    );

Map<String, dynamic> _$ReportModelToJson(_ReportModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'targetId': instance.targetId,
      'response': instance.response,
      'reason': instance.reason,
      'reportedAt': instance.reportedAt.toIso8601String(),
      'responseAt': instance.responseAt?.toIso8601String(),
    };
