import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_token_entity.freezed.dart';

@freezed
class AuthTokenEntity with _$AuthTokenEntity {
  const factory AuthTokenEntity({
    required String accessToken,
    required String refreshToken,
    required Duration expiresIn,
  }) = _AuthTokenEntity;
}
