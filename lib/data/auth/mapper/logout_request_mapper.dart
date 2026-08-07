import 'package:baladeston/data/auth/model/logout_request/logout_request_model.dart';
import 'package:baladeston/domain/auth/entity/logout_request/logout_request_entity.dart';

extension LogoutRequestMapper on LogoutRequestModel {
  LogoutRequestEntity toEntity() {
    return LogoutRequestEntity(
      deviceId: deviceId,
      refreshToken: refreshToken,
    );
  }
}

extension LogoutRequestEntityMapper on LogoutRequestEntity {
  LogoutRequestModel toModel() {
    return LogoutRequestModel(
      deviceId: deviceId,
      refreshToken: refreshToken,
    );
  }
}
