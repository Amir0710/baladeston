import 'package:baladeston/domain/auth/exception/verification_entity_exception.dart';

class CheckUserExistsUseCaseBusinessRule {
  final String phone;

  const CheckUserExistsUseCaseBusinessRule({
    required this.phone,
  });

  void validate() {
    _validatePhone();
  }

  void _validatePhone() {
    if (phone.isEmpty) {
      throw VerificationEntityPhoneEmptyException();
    }

    final phoneRegex = RegExp(r'^09\d{9}$');
    if (!phoneRegex.hasMatch(phone)) {
      throw VerificationEntityPhoneFormatInvalidException();
    }
  }
}
