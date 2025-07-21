import 'package:baladeston/domain/entitys/user/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  final int id;
  final String fullName;
  final String email;
  final String phoneNumber;
  final String? avatarUrl;
  final String status;

  const UserModel({
    required this.id,
    required this.fullName,
    required this.email,
    required this.phoneNumber,
    this.avatarUrl,
    required this.status,
  });

  /// ساخت از JSON
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  /// تبدیل به JSON
  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  /// تبدیل به Entity (User)
  User toDomain() {
    return User(
      id: id,
      fullName: fullName,
      email: email,
      phoneNumber: phoneNumber,
      avatarUrl: avatarUrl,
      status: status,
    );
  }

  /// ساخت از Entity (User)
  factory UserModel.fromDomain(User user) {
    return UserModel(
      id: user.id,
      fullName: user.fullName,
      email: user.email,
      phoneNumber: user.phoneNumber,
      avatarUrl: user.avatarUrl,
      status: user.status,
    );
  }
}
