import 'package:freezed_annotation/freezed_annotation.dart';
part 'verification_model.freezed.dart';
part 'verification_model.g.dart';
@freezed
class VerificationModel with _$VerificationModel {
  const factory VerificationModel({
    required String phone,
    required bool isVerified,
    String? sessionId,
    required DateTime verifiedAt,
  }) = _VerificationModel;

  factory VerificationModel.fromJson(Map<String, dynamic> json) =>
      _$VerificationModelFromJson(json);
}
