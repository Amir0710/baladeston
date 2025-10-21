import 'package:freezed_annotation/freezed_annotation.dart';

part 'verification_entity.freezed.dart';

@freezed
class VerificationEntity with _$VerificationEntity {
  const factory VerificationEntity({
    required String phone,
    required bool isVerified,
    String? sessionId,
    required DateTime verifiedAt,
  }) = _VerificationEntity;
}
