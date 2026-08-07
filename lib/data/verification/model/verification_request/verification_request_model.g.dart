// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerificationRequestModelImpl _$$VerificationRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$VerificationRequestModelImpl',
      json,
      ($checkedConvert) {
        final val = _$VerificationRequestModelImpl(
          phone: $checkedConvert('phone', (v) => v as String),
          targetId: $checkedConvert('targetId', (v) => (v as num).toInt()),
          purpose: $checkedConvert('purpose',
              (v) => $enumDecode(_$VerificationPurposeModelEnumMap, v)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$VerificationRequestModelImplToJson(
        _$VerificationRequestModelImpl instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'targetId': instance.targetId,
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
