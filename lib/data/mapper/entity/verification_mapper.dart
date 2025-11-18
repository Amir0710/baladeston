import 'package:baladeston/data/models/verification/verification_model.dart';
import 'package:baladeston/domain/entitys/verification/verification_entity.dart';

extension VerificationModelMapper on VerificationModel {
  VerificationEntity toEntity() {
    return VerificationEntity(
      message: message,
      otpCode: otpData?.otpCode,
      expiresIn: otpData?.expiresIn,
      createdAt: otpData?.createdAt,
    );
  }
}

extension VerificationEntityMapper on VerificationEntity {
  VerificationModel toModel() {
    return VerificationModel(
      message: message,
      otpData: OtpDataModel(
        otpCode: otpCode,
        expiresIn: expiresIn,
        createdAt: createdAt,
      ),
    );
  }
}
