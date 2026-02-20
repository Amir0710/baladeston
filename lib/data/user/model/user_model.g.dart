// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: (json['id'] as num?)?.toInt(),
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      status: $enumDecodeNullable(_$UserStatusEnumMap, json['status']),
      createAt: json['createAt'] == null
          ? null
          : DateTime.parse(json['createAt'] as String),
      password: json['password'] as String?,
      gender: $enumDecodeNullable(_$UserGenderEnumMap, json['gender']),
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      bio: json['bio'] as String?,
      country: json['country'] as String?,
      language: json['language'] as String?,
      timezone: json['timezone'] as String?,
      failedLoginAttempts: (json['failedLoginAttempts'] as num?)?.toInt(),
      lastLoginAt: json['lastLoginAt'] == null
          ? null
          : DateTime.parse(json['lastLoginAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
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
  UserStatus.inactive: 'inactive',
  UserStatus.blocked: 'blocked',
  UserStatus.pending: 'pending',
};

const _$UserGenderEnumMap = {
  UserGender.male: 'male',
  UserGender.female: 'female',
  UserGender.other: 'other',
};
