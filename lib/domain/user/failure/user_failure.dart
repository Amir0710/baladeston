abstract class UserFailure {
  final String message;

  const UserFailure(this.message);
}

// ------------------------------------------------------
// Business rule failures
// ------------------------------------------------------

class UserNotFoundFailure extends UserFailure {
  const UserNotFoundFailure([String? message])
      : super(message ?? 'کاربر مورد نظر یافت نشد');
}

class UserValidationFailure extends UserFailure {
  const UserValidationFailure([String? message])
      : super(message ?? 'اطلاعات کاربر معتبر نیست');
}

class UserPermissionDeniedFailure extends UserFailure {
  const UserPermissionDeniedFailure([String? message])
      : super(message ?? 'شما مجوز انجام این عملیات را ندارید');
}

class UserAlreadyExistsFailure extends UserFailure {
  const UserAlreadyExistsFailure([String? message])
      : super(message ?? 'کاربر با این مشخصات قبلاً ثبت شده است');
}

class UserVerificationFailedFailure extends UserFailure {
  const UserVerificationFailedFailure([String? message])
      : super(message ?? 'فرآیند احراز هویت کاربر ناموفق بود');
}

// ------------------------------------------------------
// Technical failures
// ------------------------------------------------------

class UserNetworkFailure extends UserFailure {
  const UserNetworkFailure([String? message])
      : super(message ?? 'خطا در اتصال به اینترنت');
}

class UserServerFailure extends UserFailure {
  const UserServerFailure([String? message])
      : super(message ?? 'خطای سرور، لطفاً بعداً تلاش کنید');
}

class UserUnknownFailure extends UserFailure {
  const UserUnknownFailure([String? message])
      : super(message ?? 'خطای ناشناخته‌ای رخ داده است');
}
