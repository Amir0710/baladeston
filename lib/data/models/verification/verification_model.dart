import 'package:freezed_annotation/freezed_annotation.dart';

part 'verification_model.freezed.dart';
part 'verification_model.g.dart';


@freezed
class VerificationModel with _$VerificationModel {
  const factory VerificationModel({
    String? phone,
    int? otpCode,
    int? expiresIn,
    int? createdAt,
  }) = _VerificationModel;

  factory VerificationModel.fromJson(Map<String, dynamic> json) =>
      _$VerificationModelFromJson(json);
}
