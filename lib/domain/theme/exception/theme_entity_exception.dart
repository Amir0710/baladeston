abstract class ThemeEntityException implements Exception {
  final String message;

  const ThemeEntityException(this.message);

  @override
  String toString() => message;
}

class ThemeEntityNullException extends ThemeEntityException {
  const ThemeEntityNullException()
      : super('اطلاعات تم نمی‌تواند خالی باشد');
}

class ThemeRequiredFieldException extends ThemeEntityException {
  const ThemeRequiredFieldException()
      : super('برخی از فیلدهای اجباری تم مقداردهی نشده‌اند');
}

class ThemeColorValidationException extends ThemeEntityException {
  const ThemeColorValidationException()
      : super('رنگ‌های تم معتبر نیستند');
}

class ThemeEntityValidationException extends ThemeEntityException {
  const ThemeEntityValidationException()
      : super('اطلاعات تم با قوانین سیستم مطابقت ندارند');
}
