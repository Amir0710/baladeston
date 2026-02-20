import 'package:baladeston/domain/verification/entity/verification/verification_entity.dart';
import 'package:baladeston/domain/verification/exception/verification_entity_exception.dart';

class SendVerificationUseCaseBusinessRule {
  final VerificationEntity verification;

  const SendVerificationUseCaseBusinessRule({
    required this.verification,
  });

  void validate() {
    _validatePurpose();
    _validatePhone();
  }

  void _validatePurpose() {
    if (verification.purpose == null) {
      throw const VerificationPurposeInvalidException();
    }
  }

  void _validatePhone() {
    final phone = verification.phone;

    if (phone == null || phone.trim().isEmpty) {
      throw const VerificationPhoneEmptyException();
    }
  }
}
