import 'package:baladeston/core/enum/verification/verification_purpose.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verification_request_entity.freezed.dart';
@freezed
abstract class VerificationRequestEntity with _$VerificationRequestEntity {
  const factory VerificationRequestEntity({
    required String phone,
    required int targetId ,
    required VerificationPurposeModel purpose,
  }) = _VerificationRequestEntity;
}
