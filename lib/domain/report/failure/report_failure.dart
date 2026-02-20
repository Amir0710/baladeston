abstract class ReportFailure {
  final String message;

  const ReportFailure(this.message);
}

// ------------------------------------------------------
// Business rule failures
// ------------------------------------------------------

class ReportNotFoundFailure extends ReportFailure {
  const ReportNotFoundFailure([String? message])
      : super(
    message ??
        'گزارش مورد نظر یافت نشد یا امکان دسترسی به آن وجود ندارد',
  );
}

class ReportValidationFailure extends ReportFailure {
  const ReportValidationFailure([String? message])
      : super(
    message ??
        'داده‌های ارسالی گزارش با قوانین سیستم مطابقت ندارند',
  );
}

class ReportPermissionDeniedFailure extends ReportFailure {
  const ReportPermissionDeniedFailure([String? message])
      : super(
    message ??
        'دسترسی لازم برای انجام این عملیات روی گزارش وجود ندارد',
  );
}

class ReportInvalidStateFailure extends ReportFailure {
  const ReportInvalidStateFailure([String? message])
      : super(
    message ??
        'وضعیت فعلی گزارش اجازه انجام این عملیات را نمی‌دهد',
  );
}

// ------------------------------------------------------
// Technical failures
// ------------------------------------------------------

class ReportNetworkFailure extends ReportFailure {
  const ReportNetworkFailure([String? message])
      : super(
    message ??
        'ارتباط با سرور برقرار نشد. لطفاً اتصال شبکه را بررسی نمایید',
  );
}

class ReportServerFailure extends ReportFailure {
  const ReportServerFailure([String? message])
      : super(
    message ??
        'خطای داخلی سرور در پردازش گزارش رخ داده است',
  );
}

class ReportUnknownFailure extends ReportFailure {
  const ReportUnknownFailure([String? message])
      : super(
    message ??
        'خطای پیش‌بینی‌نشده‌ای در مدیریت گزارش رخ داده است',
  );
}
