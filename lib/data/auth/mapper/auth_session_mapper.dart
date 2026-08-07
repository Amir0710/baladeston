import 'package:baladeston/data/auth/model/auth_session/auth_session_model.dart';
import 'package:baladeston/domain/auth/entity/auth_session/auth_session_entity.dart';

extension AuthSessionModelMapper on AuthSessionModel {
  AuthSessionEntity toEntity() {
    return AuthSessionEntity(
      accessToken: accessToken,
      refreshToken: refreshToken,
      expiresAt: expiresIn != null
          ? DateTime.now().add(Duration(seconds: expiresIn!))
          : null,
    );
  }
}

extension AuthSessionEntityMapper on AuthSessionEntity {
  AuthSessionModel toModel() {
    return AuthSessionModel(
      accessToken: accessToken,
      refreshToken: refreshToken,
      expiresIn: expiresAt?.difference(DateTime.now()).inSeconds,
    );
  }
}
