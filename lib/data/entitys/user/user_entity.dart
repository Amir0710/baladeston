// import '../../domain/entities/user.dart';

// class UserModel extends User {
//   const UserModel({
//     required int id,
//     required String fullName,
//     required String email,
//     required String phoneNumber,
//     String? avatarUrl,
//     required String status,
//   }) : super(
//           id: id,
//           fullName: fullName,
//           email: email,
//           phoneNumber: phoneNumber,
//           avatarUrl: avatarUrl,
//           status: status,
//         );

//   factory UserModel.fromJson(Map<String, dynamic> json) {
//     return UserModel(
//       id: json['id'],
//       fullName: json['full_name'],
//       email: json['email'],
//       phoneNumber: json['phone_number'],
//       avatarUrl: json['avatar_url'],
//       status: json['status'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'full_name': fullName,
//       'email': email,
//       'phone_number': phoneNumber,
//       'avatar_url': avatarUrl,
//       'status': status,
//     };
//   }
// }
