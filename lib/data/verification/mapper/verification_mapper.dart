import 'package:baladeston/data/verification/model/verification/verification_model.dart';
import 'package:baladeston/domain/verification/entity/verification/verification_entity.dart';

extension VerificationModelMapper on VerificationModel {
  VerificationEntity toEntity() {
    return VerificationEntity(
        phone: phone,
        otpCode: otpCode,
        expiresIn: expiresIn,
        createdAt: createdAt,
        purpose: purpose);
  }
}

extension VerificationEntityMapper on VerificationEntity {
  VerificationModel toModel() {
    return VerificationModel(
      phone: phone,
      otpCode: otpCode,
      expiresIn: expiresIn,
      createdAt: createdAt,
      purpose: purpose,
    );
  }
}
