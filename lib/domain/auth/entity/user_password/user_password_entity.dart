
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_password_entity.freezed.dart';

@freezed
class UserPasswordEntity with _$UserPasswordEntity {
  const factory UserPasswordEntity({

    required String identifier,
    required String password,
  }) = _UserPasswordEntity;
}
