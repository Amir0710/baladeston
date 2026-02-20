import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_session_model.freezed.dart';
part 'otp_session_model.g.dart';

@freezed
class OtpSessionModel with _$OtpSessionModel {
  const factory OtpSessionModel({
    required String expiresAt,
    required int retryAfter,
  }) = _OtpSessionModel;

  factory OtpSessionModel.fromJson(Map<String, dynamic> json) =>
      _$OtpSessionModelFromJson(json);
}
