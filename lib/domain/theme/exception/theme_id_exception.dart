abstract class ThemeIdException implements Exception {
  final String message;

  const ThemeIdException(this.message);

  @override
  String toString() => message;
}

class ThemeIdNullException extends ThemeIdException {
  const ThemeIdNullException()
      : super('شناسه تم نمی‌تواند خالی باشد');
}

class ThemeIdInvalidException extends ThemeIdException {
  const ThemeIdInvalidException()
      : super('شناسه تم معتبر نیست');
}

class ThemeIdFormatException extends ThemeIdException {
  const ThemeIdFormatException()
      : super('فرمت شناسه تم نامعتبر است');
}
