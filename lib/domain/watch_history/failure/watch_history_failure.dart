abstract class WatchHistoryFailure {
  final String message;

  const WatchHistoryFailure(this.message);
}

// ------------------------------------------------------
// Business rule failures
// ------------------------------------------------------

class WatchHistoryNotFoundFailure extends WatchHistoryFailure {
  const WatchHistoryNotFoundFailure([String? message])
      : super(message ?? 'سابقه تماشا یافت نشد');
}

class WatchHistoryValidationFailure extends WatchHistoryFailure {
  const WatchHistoryValidationFailure([String? message])
      : super(message ?? 'اطلاعات سابقه تماشا معتبر نیست');
}

class WatchHistoryAlreadyExistsFailure extends WatchHistoryFailure {
  const WatchHistoryAlreadyExistsFailure([String? message])
      : super(message ?? 'سابقه تماشا قبلاً ثبت شده است');
}

class WatchHistoryPermissionDeniedFailure extends WatchHistoryFailure {
  const WatchHistoryPermissionDeniedFailure([String? message])
      : super(message ?? 'شما مجوز انجام این عملیات را ندارید');
}

// ------------------------------------------------------
// Technical failures
// ------------------------------------------------------

class WatchHistoryNetworkFailure extends WatchHistoryFailure {
  const WatchHistoryNetworkFailure([String? message])
      : super(message ?? 'خطا در اتصال به اینترنت');
}

class WatchHistoryServerFailure extends WatchHistoryFailure {
  const WatchHistoryServerFailure([String? message])
      : super(message ?? 'خطای سرور، لطفاً بعداً تلاش کنید');
}

class WatchHistoryUnknownFailure extends WatchHistoryFailure {
  const WatchHistoryUnknownFailure([String? message])
      : super(message ?? 'خطای ناشناخته‌ای رخ داده است');
}
