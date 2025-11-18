import 'package:freezed_annotation/freezed_annotation.dart';

part 'verification_entity.freezed.dart';

@freezed
class VerificationEntity with _$VerificationEntity {
  const factory VerificationEntity({
    String? message,
    int? otpCode,
    int? expiresIn,
    int? createdAt,
  }) = _VerificationEntity;
}
