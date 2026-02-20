// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_session_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OtpSessionModelImpl _$$OtpSessionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OtpSessionModelImpl(
      expiresAt: json['expiresAt'] as String,
      retryAfter: (json['retryAfter'] as num).toInt(),
    );

Map<String, dynamic> _$$OtpSessionModelImplToJson(
        _$OtpSessionModelImpl instance) =>
    <String, dynamic>{
      'expiresAt': instance.expiresAt,
      'retryAfter': instance.retryAfter,
    };
