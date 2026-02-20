abstract class VerificationEntityException implements Exception {
  final String message;

  const VerificationEntityException(this.message);

  @override
  String toString() => message;
}

/// Required field validations

class VerificationEntityPhoneEmptyException
    extends VerificationEntityException {
  const VerificationEntityPhoneEmptyException()
      : super('شماره تلفن نمی‌تواند خالی باشد');
}

class VerificationEntityOtpCodeEmptyException
    extends VerificationEntityException {
  const VerificationEntityOtpCodeEmptyException()
      : super('کد تأیید وارد نشده است');
}

class VerificationEntityPurposeRequiredException
    extends VerificationEntityException {
  const VerificationEntityPurposeRequiredException()
      : super('هدف تأیید الزامی است');
}

/// Value & format validations

class VerificationEntityPhoneFormatInvalidException
    extends VerificationEntityException {
  const VerificationEntityPhoneFormatInvalidException()
      : super('فرمت شماره تلفن نامعتبر است');
}

class VerificationEntityOtpCodeLengthInvalidException
    extends VerificationEntityException {
  const VerificationEntityOtpCodeLengthInvalidException()
      : super('کد تأیید باید دقیقاً ۶ رقم باشد');
}

class VerificationEntityOtpCodeNonNumericException
    extends VerificationEntityException {
  const VerificationEntityOtpCodeNonNumericException()
      : super('کد تأیید باید فقط شامل عدد باشد');
}

class VerificationEntityPurposeInvalidException
    extends VerificationEntityException {
  const VerificationEntityPurposeInvalidException()
      : super('هدف تأیید نامعتبر است');
}

/// Time & lifecycle validations

class VerificationEntityExpiresInInvalidException
    extends VerificationEntityException {
  const VerificationEntityExpiresInInvalidException()
      : super('زمان انقضا نامعتبر است');
}

class VerificationEntityCreatedAtInvalidException
    extends VerificationEntityException {
  const VerificationEntityCreatedAtInvalidException()
      : super('زمان ایجاد نامعتبر است');
}

class VerificationEntityExpiredException extends VerificationEntityException {
  const VerificationEntityExpiredException() : super('کد تأیید منقضی شده است');
}

/// Business & security constraints

class VerificationEntityOtpMismatchException
    extends VerificationEntityException {
  const VerificationEntityOtpMismatchException()
      : super('کد تأیید مطابقت ندارد');
}

class VerificationEntityPurposeMismatchException
    extends VerificationEntityException {
  const VerificationEntityPurposeMismatchException()
      : super('هدف تأیید با عملیات درخواستی هم‌خوانی ندارد');
}

class VerificationEntityTooManyAttemptsException
    extends VerificationEntityException {
  const VerificationEntityTooManyAttemptsException()
      : super('تعداد تلاش‌های تأیید بیش از حد مجاز است');
}
