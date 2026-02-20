  import 'package:baladeston/core/enum/user_gender.dart';
  import 'package:baladeston/core/enum/user_status.dart';
  import 'package:freezed_annotation/freezed_annotation.dart';

  part 'user_entity.freezed.dart';

  @freezed
  abstract class UserEntity with _$UserEntity {
    const factory UserEntity({
      int? id,
      String? fullName,
      String? email,
      String? phoneNumber,
      String? avatarUrl,
      UserStatus? status,
      DateTime? createAt,
      String? password,
      UserGender? gender,
      DateTime? birthday,
      String? bio,
      String? country,
      String? language,
      String? timezone,
      int? failedLoginAttempts,
      DateTime? lastLoginAt,
      DateTime? updatedAt,
    }) = _UserEntity;
  }
