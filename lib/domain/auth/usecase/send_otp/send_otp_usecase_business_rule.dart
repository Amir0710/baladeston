import 'package:baladeston/domain/auth/exception/verification_entity_exception.dart';
import 'package:baladeston/domain/verification/entity/verification/verification_entity.dart';

class SendOtpUseCaseBusinessRule {
  final VerificationEntity verification;

  const SendOtpUseCaseBusinessRule({
    required this.verification,
  });

  void validate() {
    _validatePhone();
    _validatePurpose();
  }

  void _validatePhone() {
    final phone = verification.phone;

    if (phone == null || phone.isEmpty) {
      throw VerificationEntityPhoneEmptyException();
    }

    final phoneRegex = RegExp(r'^09\d{9}$');
    if (!phoneRegex.hasMatch(phone)) {
      throw VerificationEntityPhoneFormatInvalidException();
    }
  }

  void _validatePurpose() {
    if (verification.purpose == null) {
      throw VerificationEntityPurposeRequiredException();
    }
  }
}
