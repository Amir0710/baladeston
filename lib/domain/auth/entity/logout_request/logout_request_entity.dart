
import 'package:freezed_annotation/freezed_annotation.dart';

part 'logout_request_entity.freezed.dart';

@freezed
class LogoutRequestEntity with _$LogoutRequestEntity {
  const factory LogoutRequestEntity({
    required String deviceId ,
    required String refreshToken,
  }) = _LogoutRequestEntity;
}
