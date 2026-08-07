// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestModelImpl _$$RequestModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$RequestModelImpl',
      json,
      ($checkedConvert) {
        final val = _$RequestModelImpl(
          id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
          userId: $checkedConvert('userId', (v) => (v as num).toInt()),
          targetId: $checkedConvert('targetId', (v) => (v as num).toInt()),
          status: $checkedConvert(
              'status', (v) => $enumDecodeNullable(_$RequestStatusEnumMap, v)),
          expiresAt: $checkedConvert('expiresAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          requestAt: $checkedConvert('requestAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          message: $checkedConvert('message', (v) => v as String?),
          response: $checkedConvert('response', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$RequestModelImplToJson(_$RequestModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'targetId': instance.targetId,
      'status': _$RequestStatusEnumMap[instance.status],
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'requestAt': instance.requestAt?.toIso8601String(),
      'message': instance.message,
      'response': instance.response,
    };

const _$RequestStatusEnumMap = {
  RequestStatus.requested: 'requested',
  RequestStatus.pending: 'pending',
  RequestStatus.accepted: 'accepted',
  RequestStatus.rejected: 'rejected',
};
