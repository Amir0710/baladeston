abstract class DiscountFailure {
  final String message;

  const DiscountFailure(this.message);
}

// ------------------------------------------------------
// Business rule failures
// ------------------------------------------------------

/// When the requested discount does not exist or is inaccessible
class DiscountNotFoundFailure extends DiscountFailure {
  const DiscountNotFoundFailure([String? message])
      : super(
    message ??
        'تخفیف مورد نظر یافت نشد یا امکان دسترسی به آن وجود ندارد',
  );
}

/// When discount data violates business or validation rules
class DiscountValidationFailure extends DiscountFailure {
  const DiscountValidationFailure([String? message])
      : super(
    message ??
        'داده‌های ارسالی تخفیف با قوانین تجاری سیستم مطابقت ندارند',
  );
}

/// When user does not have sufficient permissions
class DiscountPermissionDeniedFailure extends DiscountFailure {
  const DiscountPermissionDeniedFailure([String? message])
      : super(
    message ??
        'دسترسی لازم برای انجام این عملیات روی تخفیف وجود ندارد',
  );
}

/// When discount is expired, inactive, or not applicable
class DiscountNotApplicableFailure extends DiscountFailure {
  const DiscountNotApplicableFailure([String? message])
      : super(
    message ??
        'این تخفیف در حال حاضر معتبر نیست یا قابلیت استفاده ندارد',
  );
}

// ------------------------------------------------------
// Technical failures
// ------------------------------------------------------

/// Network or connectivity related issues
class DiscountNetworkFailure extends DiscountFailure {
  const DiscountNetworkFailure([String? message])
      : super(
    message ??
        'ارتباط با سرور برقرار نشد. لطفاً اتصال شبکه را بررسی نمایید',
  );
}

/// Server-side or unexpected backend error
class DiscountServerFailure extends DiscountFailure {
  const DiscountServerFailure([String? message])
      : super(
    message ??
        'خطای داخلی سرور در پردازش درخواست تخفیف رخ داده است',
  );
}

/// Fallback for unclassified or unknown errors
class DiscountUnknownFailure extends DiscountFailure {
  const DiscountUnknownFailure([String? message])
      : super(
    message ??
        'خطای پیش‌بینی‌نشده‌ای در مدیریت تخفیف رخ داده است',
  );
}
