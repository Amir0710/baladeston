// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportModelImpl _$$ReportModelImplFromJson(Map<String, dynamic> json) =>
    _$ReportModelImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['userId'] as num).toInt(),
      targetId: (json['targetId'] as num).toInt(),
      response: json['response'] as String?,
      reason: json['reason'] as String?,
      reportedAt: DateTime.parse(json['reportedAt'] as String),
      responseAt: json['responseAt'] == null
          ? null
          : DateTime.parse(json['responseAt'] as String),
      status: $enumDecode(_$ReportStatusEnumMap, json['status']),
      type: $enumDecode(_$ReportTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$ReportModelImplToJson(_$ReportModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'targetId': instance.targetId,
      'response': instance.response,
      'reason': instance.reason,
      'reportedAt': instance.reportedAt.toIso8601String(),
      'responseAt': instance.responseAt?.toIso8601String(),
      'status': _$ReportStatusEnumMap[instance.status]!,
      'type': _$ReportTypeEnumMap[instance.type]!,
    };

const _$ReportStatusEnumMap = {
  ReportStatus.pending: 'pending',
  ReportStatus.inReview: 'inReview',
  ReportStatus.resolved: 'resolved',
  ReportStatus.rejected: 'rejected',
  ReportStatus.closed: 'closed',
};

const _$ReportTypeEnumMap = {
  ReportType.video: 'video',
  ReportType.comment: 'comment',
  ReportType.category: 'category',
  ReportType.collection: 'collection',
};
