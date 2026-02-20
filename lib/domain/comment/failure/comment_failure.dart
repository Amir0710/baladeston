abstract class CommentFailure {
  final String message;

  const CommentFailure(this.message);
}

// ------------------------------------------------------
// Business rule failures
// ------------------------------------------------------

/// When the requested comment does not exist or is inaccessible
class CommentNotFoundFailure extends CommentFailure {
  const CommentNotFoundFailure([String? message])
      : super(
    message ??
        'کامنت مورد نظر یافت نشد یا امکان دسترسی به آن وجود ندارد',
  );
}

/// When comment data violates business or validation rules
class CommentValidationFailure extends CommentFailure {
  const CommentValidationFailure([String? message])
      : super(
    message ??
        'داده‌های ارسالی کامنت با قوانین تجاری سیستم مطابقت ندارند',
  );
}

/// When user does not have sufficient permissions
class CommentPermissionDeniedFailure extends CommentFailure {
  const CommentPermissionDeniedFailure([String? message])
      : super(
    message ??
        'دسترسی لازم برای انجام این عملیات روی کامنت وجود ندارد',
  );
}

// ------------------------------------------------------
// Technical failures
// ------------------------------------------------------

/// Network or connectivity related issues
class CommentNetworkFailure extends CommentFailure {
  const CommentNetworkFailure([String? message])
      : super(
    message ??
        'ارتباط با سرور برقرار نشد. لطفاً اتصال شبکه را بررسی نمایید',
  );
}

/// Server-side or unexpected backend error
class CommentServerFailure extends CommentFailure {
  const CommentServerFailure([String? message])
      : super(
    message ??
        'خطای داخلی سرور در پردازش درخواست کامنت رخ داده است',
  );
}

/// Fallback for unclassified or unknown errors
class CommentUnknownFailure extends CommentFailure {
  const CommentUnknownFailure([String? message])
      : super(
    message ??
        'خطای پیش‌بینی‌نشده‌ای در مدیریت کامنت رخ داده است',
  );
}
