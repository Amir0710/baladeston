import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_session_entity.freezed.dart';

@freezed
class OtpSessionEntity with _$OtpSessionEntity {
  const factory OtpSessionEntity({

    required DateTime expiresAt,

    required int retryAfter,
  }) = _OtpSessionEntity;

  const OtpSessionEntity._();
}
