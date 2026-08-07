import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_session_model.freezed.dart';
part 'auth_session_model.g.dart';
@freezed
class AuthSessionModel with _$AuthSessionModel {
  const factory AuthSessionModel({
    required String accessToken,
    required String refreshToken,
    int? expiresIn,
  }) = _AuthSessionModel;

  factory AuthSessionModel.fromJson(Map<String, dynamic> json) =>
      _$AuthSessionModelFromJson(json);
}
