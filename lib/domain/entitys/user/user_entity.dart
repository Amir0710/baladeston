  import 'package:freezed_annotation/freezed_annotation.dart';

  part 'user_entity.freezed.dart';

  @freezed
  abstract class UserEntity with _$UserEntity {
    const factory UserEntity({
      DateTime? createAt,
      String? password,
      int? id,
      required String fullName,
      String? email,
      required String phoneNumber,
      String? avatarUrl,
      String? status,
    }) = _UserEntity;
  }
