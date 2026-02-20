abstract class PurchaseFailure {
  final String message;

  const PurchaseFailure(this.message);
}

// ------------------------------------------------------
// Business rule failures
// ------------------------------------------------------

/// When the requested purchase does not exist or is inaccessible
class PurchaseNotFoundFailure extends PurchaseFailure {
  const PurchaseNotFoundFailure([String? message])
      : super(
    message ??
        'سفارش مورد نظر یافت نشد یا امکان دسترسی به آن وجود ندارد',
  );
}

/// When purchase data violates business or validation rules
class PurchaseValidationFailure extends PurchaseFailure {
  const PurchaseValidationFailure([String? message])
      : super(
    message ??
        'داده‌های ارسالی سفارش با قوانین تجاری سیستم مطابقت ندارند',
  );
}

/// When user does not have sufficient permissions to access or modify purchase
class PurchasePermissionDeniedFailure extends PurchaseFailure {
  const PurchasePermissionDeniedFailure([String? message])
      : super(
    message ??
        'دسترسی لازم برای انجام این عملیات روی سفارش وجود ندارد',
  );
}

/// When purchase status does not allow the requested operation
/// (e.g. already paid, cancelled, or finalized)
class PurchaseInvalidStateFailure extends PurchaseFailure {
  const PurchaseInvalidStateFailure([String? message])
      : super(
    message ??
        'وضعیت فعلی سفارش اجازه انجام این عملیات را نمی‌دهد',
  );
}

/// When purchase cannot be completed due to business constraints
/// (e.g. out of stock, price changed, expired offer)
class PurchaseNotProcessableFailure extends PurchaseFailure {
  const PurchaseNotProcessableFailure([String? message])
      : super(
    message ??
        'امکان پردازش سفارش به دلیل محدودیت‌های تجاری وجود ندارد',
  );
}

// ------------------------------------------------------
// Technical failures
// ------------------------------------------------------

/// Network or connectivity related issues
class PurchaseNetworkFailure extends PurchaseFailure {
  const PurchaseNetworkFailure([String? message])
      : super(
    message ??
        'ارتباط با سرور برقرار نشد. لطفاً اتصال شبکه را بررسی نمایید',
  );
}

/// Server-side or unexpected backend error
class PurchaseServerFailure extends PurchaseFailure {
  const PurchaseServerFailure([String? message])
      : super(
    message ??
        'خطای داخلی سرور در پردازش سفارش رخ داده است',
  );
}

/// Fallback for unclassified or unknown errors
class PurchaseUnknownFailure extends PurchaseFailure {
  const PurchaseUnknownFailure([String? message])
      : super(
    message ??
        'خطای پیش‌بینی‌نشده‌ای در مدیریت سفارش رخ داده است',
  );
}
