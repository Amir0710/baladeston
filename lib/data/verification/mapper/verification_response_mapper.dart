import 'package:baladeston/data/verification/model/verification_request/verification_request_model.dart';
import 'package:baladeston/domain/verification/entity/verification_request/verification_request_entity.dart';

extension VerificationRequestModelMapper on VerificationRequestModel {
  VerificationRequestEntity toEntity() {
    return VerificationRequestEntity(
      phone: phone,
      purpose: purpose,
      targetId: targetId,
    );
  }
}

extension VerificationRequestEntityMapper on VerificationRequestEntity {
  VerificationRequestModel toModel() {
    return VerificationRequestModel(
      phone: phone,
      purpose: purpose,
      targetId: targetId,
    );
  }
}
