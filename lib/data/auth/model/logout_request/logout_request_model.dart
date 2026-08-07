import 'package:freezed_annotation/freezed_annotation.dart';

part 'logout_request_model.freezed.dart';
part 'logout_request_model.g.dart';

@freezed
class LogoutRequestModel with _$LogoutRequestModel {
  const factory LogoutRequestModel({
    required String deviceId,
    required String refreshToken,
  }) = _LogoutRequestModel;

  factory LogoutRequestModel.fromJson(Map<String, dynamic> json) =>
      _$LogoutRequestModelFromJson(json);
}
