// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_session_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthSessionModelImpl _$$AuthSessionModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$AuthSessionModelImpl',
      json,
      ($checkedConvert) {
        final val = _$AuthSessionModelImpl(
          accessToken: $checkedConvert('accessToken', (v) => v as String),
          refreshToken: $checkedConvert('refreshToken', (v) => v as String),
          expiresIn: $checkedConvert('expiresIn', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$AuthSessionModelImplToJson(
        _$AuthSessionModelImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'expiresIn': instance.expiresIn,
    };
