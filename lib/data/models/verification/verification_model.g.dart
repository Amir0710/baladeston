// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerificationModelImpl _$$VerificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VerificationModelImpl(
      phone: json['phone'] as String,
      isVerified: json['isVerified'] as bool,
      sessionId: json['sessionId'] as String?,
      verifiedAt: DateTime.parse(json['verifiedAt'] as String),
    );

Map<String, dynamic> _$$VerificationModelImplToJson(
        _$VerificationModelImpl instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'isVerified': instance.isVerified,
      'sessionId': instance.sessionId,
      'verifiedAt': instance.verifiedAt.toIso8601String(),
    };
