import 'package:baladeston/data/models/verification/verification_model.dart';
import 'package:baladeston/domain/entitys/verification/verification_entity.dart';

extension VerificationModelMapper on VerificationModel {
  VerificationEntity toEntity() {
    return VerificationEntity(
      phone: phone,
      otpCode: otpCode,
      expiresIn: expiresIn,
      createdAt: createdAt,
    );
  }
}

extension VerificationEntityMapper on VerificationEntity {
  VerificationModel toModel() {
    return VerificationModel(
      phone: phone,
      otpCode: otpCode,
      expiresIn: expiresIn,
      createdAt: createdAt,
    );
  }
}
