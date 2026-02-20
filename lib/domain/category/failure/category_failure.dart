abstract class CategoryFailure {
  final String message;

  const CategoryFailure(this.message);
}

class NetworkFailure extends CategoryFailure {
  const NetworkFailure([String? message])
      : super(message ?? 'خطا در اتصال به اینترنت');
}

class ServerFailure extends CategoryFailure {
  const ServerFailure([String? message])
      : super(message ?? 'خطای سرور، لطفاً بعداً تلاش کنید');
}

class CategoryNotFoundFailure extends CategoryFailure {
  const CategoryNotFoundFailure([String? message])
      : super(message ?? 'دسته‌بندی مورد نظر یافت نشد');
}

class ValidationFailure extends CategoryFailure {
  const ValidationFailure([String? message])
      : super(message ?? 'اطلاعات وارد شده معتبر نیست');
}

class PermissionDeniedFailure extends CategoryFailure {
  const PermissionDeniedFailure([String? message])
      : super(message ?? 'شما مجوز انجام این عملیات را ندارید');
}

class UnknownFailure extends CategoryFailure {
  const UnknownFailure([String? message])
      : super(message ?? 'خطای ناشناخته‌ای رخ داده است');
}
