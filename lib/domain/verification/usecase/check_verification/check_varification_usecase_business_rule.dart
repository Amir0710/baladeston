import 'package:baladeston/domain/verification/entity/verification/verification_entity.dart';
import 'package:baladeston/domain/verification/exception/verification_entity_exception.dart';

class CheckVerificationUseCaseBusinessRule {
  final VerificationEntity verification;

  const CheckVerificationUseCaseBusinessRule({
    required this.verification,
  });

  void validate() {
    _validatePurpose();
    _validatePhone();
    _validateOtpCode();
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

    if (!RegExp(r'^09\d{9}$').hasMatch(phone)) {
      throw const VerificationPhoneFormatInvalidException();
    }
  }

  void _validateOtpCode() {
    final code = verification.otpCode;
    if (code == null) {
      throw const VerificationCodeEmptyException();
    }

    final codeString = code.toString();

    if (codeString.length != 6) {
      throw const VerificationCodeLengthInvalidException();
    }

    if (!RegExp(r'^\d+$').hasMatch(codeString)) {
      throw const VerificationCodeNonNumericException();
    }
  }
}
