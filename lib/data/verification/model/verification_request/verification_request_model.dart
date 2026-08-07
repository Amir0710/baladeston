import 'package:baladeston/core/enum/verification/verification_purpose.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verification_request_model.freezed.dart';
part 'verification_request_model.g.dart';
@freezed
abstract class VerificationRequestModel with _$VerificationRequestModel {
  const factory VerificationRequestModel({
    required String phone,
    required int targetId ,
    required VerificationPurposeModel purpose,
  }) = _VerificationRequestModel;
  factory VerificationRequestModel.fromJson(Map<String, dynamic> json) =>
      _$VerificationRequestModelFromJson(json);
}
