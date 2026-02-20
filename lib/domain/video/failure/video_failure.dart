abstract class VideoFailure {
  final String message;

  const VideoFailure(this.message);
}

// ------------------------------------------------------
// Business rule failures
// ------------------------------------------------------

class VideoNotFoundFailure extends VideoFailure {
  const VideoNotFoundFailure([String? message])
      : super(message ?? 'ویدئوی مورد نظر یافت نشد');
}

class VideoValidationFailure extends VideoFailure {
  const VideoValidationFailure([String? message])
      : super(message ?? 'اطلاعات ویدئو معتبر نیست');
}

class VideoPermissionDeniedFailure extends VideoFailure {
  const VideoPermissionDeniedFailure([String? message])
      : super(message ?? 'شما مجوز انجام این عملیات را ندارید');
}

class VideoFormatNotSupportedFailure extends VideoFailure {
  const VideoFormatNotSupportedFailure([String? message])
      : super(message ?? 'فرمت ویدئو پشتیبانی نمی‌شود');
}

class VideoUploadFailedFailure extends VideoFailure {
  const VideoUploadFailedFailure([String? message])
      : super(message ?? 'آپلود ویدئو با خطا مواجه شد');
}

// ------------------------------------------------------
// Technical failures
// ------------------------------------------------------

class VideoNetworkFailure extends VideoFailure {
  const VideoNetworkFailure([String? message])
      : super(message ?? 'خطا در اتصال به اینترنت');
}

class VideoServerFailure extends VideoFailure {
  const VideoServerFailure([String? message])
      : super(message ?? 'خطای سرور، لطفاً بعداً تلاش کنید');
}

class VideoUnknownFailure extends VideoFailure {
  const VideoUnknownFailure([String? message])
      : super(message ?? 'خطای ناشناخته‌ای در مدیریت ویدئو رخ داده است');
}
