import 'package:freezed_annotation/freezed_annotation.dart';

part 'verification_entity.freezed.dart';

@freezed
class VerifyEntity with _$VerifyEntity {
  const factory VerifyEntity({
    required String phone,
    required bool isVerified,
    String? sessionId,
    required DateTime verifiedAt,
  }) = _VerifyEntity;
}
