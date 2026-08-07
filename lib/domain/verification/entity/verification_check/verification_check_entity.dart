import 'package:baladeston/core/enum/verification/verification_purpose.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verification_check_entity.freezed.dart';
@freezed
abstract class VerificationCheckEntity with _$VerificationCheckEntity {
  const factory VerificationCheckEntity({
    required String phone,
    required int otpCode,
    required VerificationPurposeModel purpose,
  }) = _VerificationCheckEntity;
}
