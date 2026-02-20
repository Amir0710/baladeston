abstract class VerificationFailure {
  final String message;

  const VerificationFailure(this.message);
}

class ValidationFailure extends VerificationFailure {
  const ValidationFailure([String? message])
      : super(message ?? 'کد تأیید نامعتبر است.');
}

class UserDataInvalidFailure extends VerificationFailure {
  const UserDataInvalidFailure([String? message])
      : super(message ?? 'داده کاربر معتبر نیست.');
}

class NetworkFailure extends VerificationFailure {
  const NetworkFailure([String? message])
      : super(message ?? 'ارتباط با سرور برقرار نشد.');
}

class UnknownFailure extends VerificationFailure {
  const UnknownFailure([String? message])
      : super(message ?? 'خطای ناشناخته‌ای رخ داده است.');
}
