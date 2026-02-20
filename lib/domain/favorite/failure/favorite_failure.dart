abstract class FavoriteFailure {
  final String message;

  const FavoriteFailure(this.message);
}

// ------------------------------------------------------
// Business failures
// ------------------------------------------------------

class FavoriteNotFoundFailure extends FavoriteFailure {
  const FavoriteNotFoundFailure([String? message])
      : super(message ?? 'مورد علاقه یافت نشد');
}

class FavoriteValidationFailure extends FavoriteFailure {
  const FavoriteValidationFailure([String? message])
      : super(message ?? 'اطلاعات مورد علاقه معتبر نیست');
}

class FavoriteAlreadyExistsFailure extends FavoriteFailure {
  const FavoriteAlreadyExistsFailure([String? message])
      : super(message ?? 'این آیتم قبلاً به علاقه‌مندی‌ها اضافه شده است');
}

class FavoritePermissionDeniedFailure extends FavoriteFailure {
  const FavoritePermissionDeniedFailure([String? message])
      : super(message ?? 'شما مجوز انجام این عملیات را ندارید');
}

// ------------------------------------------------------
// Technical failures
// ------------------------------------------------------

class FavoriteNetworkFailure extends FavoriteFailure {
  const FavoriteNetworkFailure([String? message])
      : super(message ?? 'خطا در اتصال به اینترنت');
}

class FavoriteServerFailure extends FavoriteFailure {
  const FavoriteServerFailure([String? message])
      : super(message ?? 'خطای سرور رخ داده است');
}

class FavoriteUnknownFailure extends FavoriteFailure {
  const FavoriteUnknownFailure([String? message])
      : super(message ?? 'خطای ناشناخته‌ای رخ داده است');
}
