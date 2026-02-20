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
      purpose: $enumDecode(_$VerificationPurposeModelEnumMap, json['purpose']),
    );

Map<String, dynamic> _$$VerificationModelImplToJson(
        _$VerificationModelImpl instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'otpCode': instance.otpCode,
      'expiresIn': instance.expiresIn,
      'createdAt': instance.createdAt,
      'purpose': _$VerificationPurposeModelEnumMap[instance.purpose]!,
    };

const _$VerificationPurposeModelEnumMap = {
  VerificationPurposeModel.login: 'login',
  VerificationPurposeModel.register: 'register',
  VerificationPurposeModel.resetPassword: 'resetPassword',
  VerificationPurposeModel.verifyPhone: 'verifyPhone',
  VerificationPurposeModel.verifyEmail: 'verifyEmail',
  VerificationPurposeModel.changePassword: 'changePassword',
  VerificationPurposeModel.changePhone: 'changePhone',
  VerificationPurposeModel.confirmCriticalAction: 'confirmCriticalAction',
  VerificationPurposeModel.twoFactorAuth: 'twoFactorAuth',
};
