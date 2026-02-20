abstract class ThemeFailure {
  final String message;

  const ThemeFailure(this.message);
}

// ------------------------------------------------------
// Business failures
// ------------------------------------------------------

class ThemeNotFoundFailure extends ThemeFailure {
  const ThemeNotFoundFailure([String? message])
      : super(
    message ?? 'تم مورد نظر یافت نشد یا امکان دسترسی به آن وجود ندارد',
  );
}

class ThemeValidationFailure extends ThemeFailure {
  const ThemeValidationFailure([String? message])
      : super(
    message ?? 'داده‌های تم با قوانین سیستم مطابقت ندارند',
  );
}

class ThemePermissionDeniedFailure extends ThemeFailure {
  const ThemePermissionDeniedFailure([String? message])
      : super(
    message ?? 'دسترسی لازم برای انجام این عملیات روی تم وجود ندارد',
  );
}

class ThemeAlreadyActiveFailure extends ThemeFailure {
  const ThemeAlreadyActiveFailure([String? message])
      : super(
    message ?? 'این تم در حال حاضر فعال است',
  );
}

// ------------------------------------------------------
// Technical failures
// ------------------------------------------------------

class ThemeNetworkFailure extends ThemeFailure {
  const ThemeNetworkFailure([String? message])
      : super(
    message ?? 'ارتباط با سرور برقرار نشد. اتصال شبکه را بررسی کنید',
  );
}

class ThemeServerFailure extends ThemeFailure {
  const ThemeServerFailure([String? message])
      : super(
    message ?? 'خطای داخلی سرور در پردازش تم رخ داده است',
  );
}

class ThemeUnknownFailure extends ThemeFailure {
  const ThemeUnknownFailure([String? message])
      : super(
    message ?? 'خطای پیش‌بینی‌نشده‌ای در مدیریت تم رخ داده است',
  );
}
