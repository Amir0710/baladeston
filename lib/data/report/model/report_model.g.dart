// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportModelImpl _$$ReportModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ReportModelImpl',
      json,
      ($checkedConvert) {
        final val = _$ReportModelImpl(
          id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
          userId: $checkedConvert('userId', (v) => (v as num).toInt()),
          targetId: $checkedConvert('targetId', (v) => (v as num).toInt()),
          response: $checkedConvert('response', (v) => v as String?),
          reason: $checkedConvert('reason', (v) => v as String?),
          reportedAt:
              $checkedConvert('reportedAt', (v) => DateTime.parse(v as String)),
          responseAt: $checkedConvert('responseAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          status: $checkedConvert(
              'status', (v) => $enumDecode(_$ReportStatusEnumMap, v)),
          type: $checkedConvert(
              'type', (v) => $enumDecode(_$ReportTypeEnumMap, v)),
        );
        return val;
      },
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
