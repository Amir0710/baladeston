// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerificationModelImpl _$$VerificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VerificationModelImpl(
      phone: json['phone'] as String?,
      otpCode: (json['otpCode'] as num?)?.toInt(),
      expiresIn: (json['expiresIn'] as num?)?.toInt(),
      createdAt: (json['createdAt'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$VerificationModelImplToJson(
        _$VerificationModelImpl instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'otpCode': instance.otpCode,
      'expiresIn': instance.expiresIn,
      'createdAt': instance.createdAt,
    };
