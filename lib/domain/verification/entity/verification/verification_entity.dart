import 'package:baladeston/core/enum/verification_purpose.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verification_entity.freezed.dart';
@freezed
abstract class VerificationEntity with _$VerificationEntity {
  const factory VerificationEntity({
    String? phone,
    int? otpCode,
    int? expiresIn,
    int? createdAt,
    required VerificationPurposeModel purpose
  }) = _VerificationEntity;
}
