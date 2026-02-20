import 'package:baladeston/domain/auth/exception/verification_entity_exception.dart';
import 'package:baladeston/domain/auth/value_object/login_credentials.dart';

class LoginWithPasswordUseCaseBusinessRule {
  final LoginWithPasswordAttribute attribute;

  const LoginWithPasswordUseCaseBusinessRule({
    required this.attribute,
  });

  void validate() {
    _validatePhone();
    _validatePassword();
  }

  void _validatePhone() {
    final phone = attribute.identifier.toString();

    if (phone.isEmpty) {
      throw VerificationEntityPhoneEmptyException();
    }

    if (phone.length != 11) {
      throw VerificationEntityPhoneFormatInvalidException();
    }
  }

  void _validatePassword() {
    final password = attribute.password;

    if (password.isEmpty) {
      throw VerificationEntityOtpCodeEmptyException();
    }

    if (password.length != 8) {
      throw VerificationEntityOtpCodeLengthInvalidException();
    }
  }
}
