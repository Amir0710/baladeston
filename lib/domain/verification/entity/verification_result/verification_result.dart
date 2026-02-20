import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:baladeston/domain/auth/entity/auth_session/auth_session_entity.dart';

part 'verification_result.freezed.dart';

@freezed
sealed class VerificationResult with _$VerificationResult {
  const factory VerificationResult.success() = VerificationSuccess;

  const factory VerificationResult.authenticated({
    required AuthSessionEntity session,
  }) = VerificationAuthenticated;
}
