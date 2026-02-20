abstract class VerificationEntityException implements Exception {
  final String message;
  const VerificationEntityException(this.message);
}

class VerificationPhoneEmptyException extends VerificationEntityException {
  const VerificationPhoneEmptyException()
      : super('شماره تلفن نمی‌تواند خالی باشد.');
}

class VerificationCodeEmptyException extends VerificationEntityException {
  const VerificationCodeEmptyException()
      : super('کد تأیید وارد نشده است.');
}

class VerificationCodeLengthInvalidException extends VerificationEntityException {
  const VerificationCodeLengthInvalidException()
      : super('کد تأیید باید دقیقاً ۶ رقم باشد.');
}

class VerificationCodeNonNumericException extends VerificationEntityException {
  const VerificationCodeNonNumericException()
      : super('کد تأیید باید فقط شامل عدد باشد.');
}

class VerificationPurposeInvalidException extends VerificationEntityException {
  const VerificationPurposeInvalidException()
      : super('هدف تأیید نامعتبر است.');
}

class VerificationPhoneFormatInvalidException extends VerificationEntityException {
  const VerificationPhoneFormatInvalidException()
      : super('فرمت شماره تلفن اشتباه است.');
}
