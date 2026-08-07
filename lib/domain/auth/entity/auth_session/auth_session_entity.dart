
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_session_entity.freezed.dart';

@freezed
class AuthSessionEntity with _$AuthSessionEntity {
  const factory AuthSessionEntity({
    required String accessToken,
    required String refreshToken,
    DateTime? expiresAt,
  }) = _AuthSessionEntity;
}
