import 'package:freezed_annotation/freezed_annotation.dart';

part 'verification_model.freezed.dart';
part 'verification_model.g.dart';

@freezed
class VerificationModel with _$VerificationModel {
  const factory VerificationModel({
    String? message,
    OtpDataModel? otpData,
  }) = _VerificationModel;

  factory VerificationModel.fromJson(Map<String, dynamic> json) =>
      _$VerificationModelFromJson(json);
}

@freezed
class OtpDataModel with _$OtpDataModel {
  const factory OtpDataModel({
    int? otpCode,
    int? expiresIn,
    int? createdAt,
  }) = _OtpDataModel;

  factory OtpDataModel.fromJson(Map<String, dynamic> json) =>
      _$OtpDataModelFromJson(json);
}
