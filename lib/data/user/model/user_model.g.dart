// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$UserModelImpl',
      json,
      ($checkedConvert) {
        final val = _$UserModelImpl(
          id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
          fullName: $checkedConvert('fullName', (v) => v as String?),
          email: $checkedConvert('email', (v) => v as String?),
          phoneNumber: $checkedConvert('phoneNumber', (v) => v as String?),
          avatarUrl: $checkedConvert('avatarUrl', (v) => v as String?),
          status: $checkedConvert(
              'status', (v) => $enumDecodeNullable(_$UserStatusEnumMap, v)),
          createAt: $checkedConvert('createAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          password: $checkedConvert('password', (v) => v as String?),
          gender: $checkedConvert(
              'gender', (v) => $enumDecodeNullable(_$UserGenderEnumMap, v)),
          birthday: $checkedConvert('birthday',
              (v) => v == null ? null : DateTime.parse(v as String)),
          bio: $checkedConvert('bio', (v) => v as String?),
          country: $checkedConvert('country', (v) => v as String?),
          language: $checkedConvert('language', (v) => v as String?),
          timezone: $checkedConvert('timezone', (v) => v as String?),
          failedLoginAttempts: $checkedConvert(
              'failedLoginAttempts', (v) => (v as num?)?.toInt()),
          lastLoginAt: $checkedConvert('lastLoginAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          updatedAt: $checkedConvert('updatedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'avatarUrl': instance.avatarUrl,
      'status': _$UserStatusEnumMap[instance.status],
      'createAt': instance.createAt?.toIso8601String(),
      'password': instance.password,
      'gender': _$UserGenderEnumMap[instance.gender],
      'birthday': instance.birthday?.toIso8601String(),
      'bio': instance.bio,
      'country': instance.country,
      'language': instance.language,
      'timezone': instance.timezone,
      'failedLoginAttempts': instance.failedLoginAttempts,
      'lastLoginAt': instance.lastLoginAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

const _$UserStatusEnumMap = {
  UserStatus.active: 'active',
  UserStatus.suspended: 'suspended',
  UserStatus.banned: 'banned',
  UserStatus.deleted: 'deleted',
};

const _$UserGenderEnumMap = {
  UserGender.male: 'male',
  UserGender.female: 'female',
  UserGender.other: 'other',
};
