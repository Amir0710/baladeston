
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
 // domain/entities/user_entity.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
abstract class UserEntity with _$UserEntity {
  const factory UserEntity({
    required int id,
    required String fullName,
    required String email,
    required String phoneNumber,
    required String? avatarUrl,
    required String status,
  }) = _UserEntity;
}
