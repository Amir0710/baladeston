// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerificationModelImpl _$$VerificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VerificationModelImpl(
      message: json['message'] as String?,
      otpData: json['otpData'] == null
          ? null
          : OtpDataModel.fromJson(json['otpData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VerificationModelImplToJson(
        _$VerificationModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'otpData': instance.otpData,
    };

_$OtpDataModelImpl _$$OtpDataModelImplFromJson(Map<String, dynamic> json) =>
    _$OtpDataModelImpl(
      otpCode: (json['otpCode'] as num?)?.toInt(),
      expiresIn: (json['expiresIn'] as num?)?.toInt(),
      createdAt: (json['createdAt'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$OtpDataModelImplToJson(_$OtpDataModelImpl instance) =>
    <String, dynamic>{
      'otpCode': instance.otpCode,
      'expiresIn': instance.expiresIn,
      'createdAt': instance.createdAt,
    };
