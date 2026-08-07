// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logout_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LogoutRequestModelImpl _$$LogoutRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$LogoutRequestModelImpl',
      json,
      ($checkedConvert) {
        final val = _$LogoutRequestModelImpl(
          deviceId: $checkedConvert('deviceId', (v) => v as String),
          refreshToken: $checkedConvert('refreshToken', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$LogoutRequestModelImplToJson(
        _$LogoutRequestModelImpl instance) =>
    <String, dynamic>{
      'deviceId': instance.deviceId,
      'refreshToken': instance.refreshToken,
    };
