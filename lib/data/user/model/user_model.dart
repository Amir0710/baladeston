import 'package:baladeston/core/enum/user/user_gender.dart';
import 'package:baladeston/core/enum/user/user_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
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
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}
