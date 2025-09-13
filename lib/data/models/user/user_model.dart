import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    required int? id,
    required String fullName,
    required String email, // edit nullable
    required String phoneNumber,
    required String? avatarUrl,
    required String status, // edit nullable
    required String role, // edit unnecessary 
    // edit add created at
    // edit add password
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
