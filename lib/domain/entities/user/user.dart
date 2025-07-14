
// class User {
//   final int id;
//   final String fullName;
//   final String email;
//   final String phoneNumber;
//   final String? avatarUrl;
//   final String status;

//   const User({
//     required this.id,
//     required this.fullName,
//     required this.email,
//     required this.phoneNumber,
//     this.avatarUrl,
//     required this.status,
//   });
// }

import 'package:freezed_annotation/freezed_annotation.dart';

part '../user.freezed.dart';
part '../user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String fullName,
    required String email,
    required String phoneNumber,
    String? avatarUrl,
    required String status,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
