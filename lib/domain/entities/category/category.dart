// class Category {
//   final int id;
//   final String title;
//   final String password;
//   final double price;
//   final String status;
//   final String? thumbnailUrl;
//   final DateTime createdAt;
//   final int ownerId;

//   const Category({
//     required this.id,
//     required this.title,
//     required this.password,
//     required this.price,
//     required this.status,
//     this.thumbnailUrl,
//     required this.createdAt,
//     required this.ownerId,
//   });
// }




import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

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
