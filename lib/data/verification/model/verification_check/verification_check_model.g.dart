// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification_check_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerificationCheckModelImpl _$$VerificationCheckModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$VerificationCheckModelImpl',
      json,
      ($checkedConvert) {
        final val = _$VerificationCheckModelImpl(
          phone: $checkedConvert('phone', (v) => v as String),
          otpCode: $checkedConvert('otpCode', (v) => (v as num).toInt()),
          purpose: $checkedConvert('purpose',
              (v) => $enumDecode(_$VerificationPurposeModelEnumMap, v)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$VerificationCheckModelImplToJson(
        _$VerificationCheckModelImpl instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'otpCode': instance.otpCode,
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
