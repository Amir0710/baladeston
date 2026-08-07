import 'package:baladeston/data/auth/model/user_password/user_password_model.dart';
import 'package:baladeston/domain/auth/entity/user_password/user_password_entity.dart';

extension UserPasswordMapper on UserPasswordModel {
  UserPasswordEntity toEntity() {
    return UserPasswordEntity(
      identifier: identifier,
      password: identifier,
    );
  }
}

extension UserPasswordEntityMapper on UserPasswordEntity {
  UserPasswordModel toModel() {
    return UserPasswordModel(
      identifier: identifier,
      password: identifier,
    );
  }
}
