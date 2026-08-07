import 'package:baladeston/data/verification/model/verification_check/verification_check_model.dart';
import 'package:baladeston/domain/verification/entity/verification_check/verification_check_entity.dart';

extension VerificationCheckModelMapper on VerificationCheckModel {
  VerificationCheckEntity toEntity() {
    return VerificationCheckEntity(
      phone: phone,
      otpCode: otpCode,
      purpose: purpose,
    );
  }
}

extension VerificationCheckEntityMapper on VerificationCheckEntity {
  VerificationCheckModel toModel() {
    return VerificationCheckModel(
      phone: phone,
      otpCode: otpCode,
      purpose: purpose,
    );
  }
}
