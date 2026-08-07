import 'package:freezed_annotation/freezed_annotation.dart';

part 'verification_response_model.freezed.dart';
part 'verification_response_model.g.dart';

@freezed
class VerificationResponseModel with _$VerificationResponseModel {
  const factory VerificationResponseModel({
    required DateTime expiresAt,
    required int retryAfter,
  }) = _VerificationResponseModel;

  factory VerificationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$VerificationResponseModelFromJson(json);
}
