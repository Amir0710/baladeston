abstract class CollectionFailure {
  final String message;

  const CollectionFailure(this.message);
}

// ------------------------------------------------------
// Business rule failures
// ------------------------------------------------------

class CollectionNotFoundFailure extends CollectionFailure {
  const CollectionNotFoundFailure([String? message])
      : super(message ?? 'کالکشن مورد نظر یافت نشد');
}

class CollectionValidationFailure extends CollectionFailure {
  const CollectionValidationFailure([String? message])
      : super(message ?? 'اطلاعات کالکشن معتبر نیست');
}

class CollectionPermissionDeniedFailure extends CollectionFailure {
  const CollectionPermissionDeniedFailure([String? message])
      : super(message ?? 'شما مجوز انجام این عملیات را ندارید');
}

// ------------------------------------------------------
// Technical failures
// ------------------------------------------------------

class CollectionNetworkFailure extends CollectionFailure {
  const CollectionNetworkFailure([String? message])
      : super(message ?? 'خطا در اتصال به اینترنت');
}

class CollectionServerFailure extends CollectionFailure {
  const CollectionServerFailure([String? message])
      : super(message ?? 'خطای سرور، لطفاً بعداً تلاش کنید');
}

class CollectionUnknownFailure extends CollectionFailure {
  const CollectionUnknownFailure([String? message])
      : super(message ?? 'خطای ناشناخته‌ای در کالکشن رخ داده است');
}
