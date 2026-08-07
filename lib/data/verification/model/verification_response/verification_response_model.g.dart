// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerificationResponseModelImpl _$$VerificationResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$VerificationResponseModelImpl',
      json,
      ($checkedConvert) {
        final val = _$VerificationResponseModelImpl(
          expiresAt:
              $checkedConvert('expiresAt', (v) => DateTime.parse(v as String)),
          retryAfter: $checkedConvert('retryAfter', (v) => (v as num).toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$VerificationResponseModelImplToJson(
        _$VerificationResponseModelImpl instance) =>
    <String, dynamic>{
      'expiresAt': instance.expiresAt.toIso8601String(),
      'retryAfter': instance.retryAfter,
    };
