import 'package:baladeston/data/verification/model/otp_session/otp_session_model.dart';
import 'package:baladeston/domain/verification/entity/otp_session/otp_session_entity.dart';

extension OtpSessionModelMapper on OtpSessionModel {
  OtpSessionEntity toEntity() {
    return OtpSessionEntity(
      expiresAt: DateTime.parse(expiresAt),
      retryAfter: retryAfter,
    );
  }
}

extension OtpSessionEntityMapper on OtpSessionEntity {
  OtpSessionModel toModel() {
    return OtpSessionModel(
      expiresAt: expiresAt.toIso8601String(),
      retryAfter: retryAfter,
    );
  }
}
