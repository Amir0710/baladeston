// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_password_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserPasswordModelImpl _$$UserPasswordModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$UserPasswordModelImpl',
      json,
      ($checkedConvert) {
        final val = _$UserPasswordModelImpl(
          identifier: $checkedConvert('identifier', (v) => v as String),
          password: $checkedConvert('password', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$UserPasswordModelImplToJson(
        _$UserPasswordModelImpl instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'password': instance.password,
    };
