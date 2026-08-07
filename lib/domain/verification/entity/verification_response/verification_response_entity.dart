import 'package:freezed_annotation/freezed_annotation.dart';

part 'verification_response_entity.freezed.dart';

@freezed
class VerificationResponseEntity with _$VerificationResponseEntity {
  const factory VerificationResponseEntity({
    required DateTime expiresAt,
    required int retryAfter,
  }) = _VerificationResponseEntity;

  const VerificationResponseEntity._();
}
