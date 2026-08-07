import 'package:baladeston/core/enum/verification/verification_purpose.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verification_check_model.freezed.dart';
part 'verification_check_model.g.dart';
@freezed
abstract class VerificationCheckModel with _$VerificationCheckModel {
  const factory VerificationCheckModel({
    required String phone,
    required int otpCode,
    required VerificationPurposeModel purpose,
  }) = _VerificationCheckModel;
  factory VerificationCheckModel.fromJson(Map<String, dynamic> json) =>
      _$VerificationCheckModelFromJson(json);
}
