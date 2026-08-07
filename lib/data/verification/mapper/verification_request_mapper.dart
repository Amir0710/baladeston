import 'package:baladeston/data/verification/model/verification_response/verification_response_model.dart';
import 'package:baladeston/domain/verification/entity/verification_response/verification_response_entity.dart';

extension VerificationResponseModelMapper on VerificationResponseModel {
  VerificationResponseEntity toEntity() {
    return VerificationResponseEntity(
      expiresAt: expiresAt,
      retryAfter: retryAfter,
    );
  }
}

extension VerificationResponseEntityMapper on VerificationResponseEntity {
  VerificationResponseModel toModel() {
    return VerificationResponseModel(
      expiresAt: expiresAt,
      retryAfter: retryAfter,
    );
  }
}
