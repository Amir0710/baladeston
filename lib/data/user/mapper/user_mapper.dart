import 'package:baladeston/data/user/model/user_model.dart'; // فرض شده
import 'package:baladeston/domain/user/entity/user_entity.dart';

extension UserModelMapper on UserModel {
  UserEntity toEntity() {
    return UserEntity(
      id: id,
      createAt: createAt,
      password: password,
      fullName: fullName,
      email: email,
      phoneNumber: phoneNumber,
      avatarUrl: avatarUrl,
      status: status,
      gender: gender,
      birthday: birthday,
      bio: bio,
      country: country,
      language: language,
      timezone: timezone,
      failedLoginAttempts: failedLoginAttempts,
      lastLoginAt: lastLoginAt,
      updatedAt: updatedAt,
    );
  }
}

extension UserEntityMapper on UserEntity {
  UserModel toModel() {
    return UserModel(
      id: id,
      createAt: createAt,
      password: password,
      fullName: fullName,
      email: email,
      phoneNumber: phoneNumber,
      avatarUrl: avatarUrl,
      status: status,
      gender: gender,
      birthday: birthday,
      bio: bio,
      country: country,
      language: language,
      timezone: timezone,
      failedLoginAttempts: failedLoginAttempts,
      lastLoginAt: lastLoginAt,
      updatedAt: updatedAt,
    );
  }
}
